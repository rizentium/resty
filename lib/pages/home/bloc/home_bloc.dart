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
    LocationPermission permission = await checkPermission();
    if (permission == LocationPermission.denied) {
      await requestPermission();
    }
    Position position =
        await getCurrentPosition(desiredAccuracy: LocationAccuracy.high);

    if (event is HomeFetched) {
      yield StateLoading();
      try {
        this._currentData = await repository.getGeocode(
            lat: position.latitude.toString(),
            lon: position.longitude.toString());

        // sort based on popularity
        this._currentPopular = new GeocodeModel(
          location: this._currentData.location,
          popularity: this._currentData.popularity,
          link: this._currentData.link,
          nearbyRestaurant: this._currentData.nearbyRestaurant.toList(),
        );

        this._currentPopular.nearbyRestaurant.sort((a, b) => b
            .userRating.aggregateRating
            .compareTo(a.userRating.aggregateRating));

        yield StateSuccess(
            data: this._currentData, popular: this._currentPopular);
      } catch (err) {
        yield StateFailure(data: err);
      }
    }

    if (event is HomeFilter) {
      yield StateLoading();
      if (this._currentData == null) {
        try {
          this._currentData = await repository.getGeocode(
              lat: position.latitude.toString(),
              lon: position.longitude.toString());
        } catch (err) {
          yield StateFailure(data: err);
        }
      }

      if (event.selected == 'All') {
        // return success state
        yield StateSuccess(
          data: this._currentData,
          selected: event.selected,
          popular: this._currentPopular,
        );
        return;
      }

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
