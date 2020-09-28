import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:geolocator/geolocator.dart';
import 'package:meta/meta.dart';
import 'package:resty/models/geocode.dart';
import 'package:resty/services/repositories/zomato.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(StateInitial());

  GeocodeModel _currentData;
  GeocodeModel _currentPopular;

  final ZomatoRepository repository = new ZomatoRepository();

  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    // check location permission
    LocationPermission permission = await checkPermission();
    if (permission == LocationPermission.denied) {
      await requestPermission();
    }
    Position position = await getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );

    // set StateLoading before go to other state
    yield StateLoading();

    // HomeFetched event section
    if (event is HomeFetched) {
      try {
        // get data from endpoint using current position
        this._currentData = await repository.getGeocode(
          lat: position.latitude.toString(),
          lon: position.longitude.toString(),
        );

        // copy _currentData to _currentPopular
        this._currentPopular = new GeocodeModel(
          location: this._currentData.location,
          popularity: this._currentData.popularity,
          link: this._currentData.link,
          nearbyRestaurant: this._currentData.nearbyRestaurant.toList(),
        );

        // sort _currentPopular based on aggregateRating
        this._currentPopular.nearbyRestaurant.sort((a, b) => b
            .userRating.aggregateRating
            .compareTo(a.userRating.aggregateRating));

        yield StateSuccess(
          data: this._currentData,
          popular: this._currentPopular,
        );
      } catch (err) {
        yield StateFailure(data: err);
      }
    }

    // HomeFilter event section
    if (event is HomeFilter) {
      // get data from endpoint when _currentData is empty
      if (this._currentData == null) {
        try {
          this._currentData = await repository.getGeocode(
            lat: position.latitude.toString(),
            lon: position.longitude.toString(),
          );
        } catch (err) {
          yield StateFailure(data: err);
        }
      }

      // if current selected filter is 'All'
      if (event.selected == 'All') {
        yield StateSuccess(
          data: this._currentData,
          selected: event.selected,
          popular: this._currentPopular,
        );
        return;
      }

      // if current selected filter other than 'All'
      var result = new GeocodeModel(
          location: this._currentData.location,
          popularity: this._currentData.popularity,
          link: this._currentData.link,
          nearbyRestaurant: this
              ._currentData
              .nearbyRestaurant
              .where((element) =>
                  element.cuisines.split(', ').contains(event.selected))
              .toList());

      var popular = new GeocodeModel(
        location: this._currentData.location,
        popularity: this._currentData.popularity,
        link: this._currentData.link,
        nearbyRestaurant: result.nearbyRestaurant.toList(),
      );

      // sort nearbyRestaurant based on aggregateRating
      popular.nearbyRestaurant.sort((a, b) =>
          b.userRating.aggregateRating.compareTo(a.userRating.aggregateRating));

      yield StateSuccess(
        data: result,
        selected: event.selected,
        popular: popular,
      );
    }
  }
}
