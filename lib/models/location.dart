import 'package:equatable/equatable.dart';

class Location extends Equatable {
  final int entityId;
  final String entityType;
  final String title;
  final String latitude;
  final String longitude;
  final int cityId;
  final String cityName;
  final int countryId;
  final String countryName;

  Location({
    this.entityId,
    this.entityType,
    this.title,
    this.latitude,
    this.longitude,
    this.cityId,
    this.cityName,
    this.countryId,
    this.countryName,
  });

  @override
  List<Object> get props => [
        entityId,
        entityType,
        title,
        latitude,
        longitude,
        cityId,
        cityName,
        countryId,
        countryName
      ];
}
