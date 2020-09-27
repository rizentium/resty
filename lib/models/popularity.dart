import 'package:equatable/equatable.dart';

class Popularity extends Equatable {
  final String popularity;
  final String nightlifeIndex;
  final List<dynamic> nearbyRes;
  final List<dynamic> topCuisines;
  final String popularityRes;
  final String nightlifeRes;
  final String subzone;
  final int subzoneId;
  final String city;

  Popularity({
    this.popularity,
    this.nightlifeIndex,
    this.nearbyRes,
    this.topCuisines,
    this.popularityRes,
    this.nightlifeRes,
    this.subzone,
    this.subzoneId,
    this.city,
  });

  @override
  List<Object> get props => [
        popularity,
        nightlifeIndex,
        nearbyRes,
        topCuisines,
        popularityRes,
        nightlifeRes,
        subzone,
        subzoneId,
        city
      ];
}
