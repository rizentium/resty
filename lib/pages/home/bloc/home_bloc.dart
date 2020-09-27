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
      print('is HomeFetched');
      yield StateLoading();
      try {
        this._currentData = await repository.getGeocode(
            lat: position.latitude.toString(),
            lon: position.longitude.toString());
        yield StateSuccess(data: this._currentData);
      } catch (err) {
        yield StateFailure(data: err);
      }
    }

    if (event is HomeFilter) {
      print('is HomeFiltered');
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
        yield StateSuccess(data: this._currentData, selected: event.selected);
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

      yield StateSuccess(data: result, selected: event.selected);
    }
  }
}
