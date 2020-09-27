import 'package:equatable/equatable.dart';
import 'package:resty/models/location.dart';
import 'package:resty/models/popularity.dart';
import 'package:resty/models/restaurant.dart';

class GeocodeModel extends Equatable {
  final Location location;
  final Popularity popularity;
  final String link;
  final List<RestaurantModel> nearbyRestaurant;

  GeocodeModel(
      {this.location, this.popularity, this.link, this.nearbyRestaurant});
  @override
  List<Object> get props => [location, popularity, link, nearbyRestaurant];

  factory GeocodeModel.fromJSON(dynamic payload) {
    // Convert restaurant JSON array to Object
    List<RestaurantModel> restaurants = payload['nearby_restaurants']
        .map((data) => RestaurantModel.fromJSON(data))
        .toList()
        .cast<RestaurantModel>();

    return GeocodeModel(
      location: Location(
        entityType: payload['location']['entity_type'],
        entityId: payload['location']['entity_id'],
        title: payload['location']['title'],
        latitude: payload['location']['latitude'],
        longitude: payload['location']['longitude'],
        cityId: payload['location']['city_id'],
        cityName: payload['location']['city_name'],
        countryId: payload['location']['country_id'],
        countryName: payload['location']['country_name'],
      ),
      popularity: Popularity(
        popularity: payload['popularity']['popularity'],
        nightlifeIndex: payload['popularity']['nightlife_index'],
        nearbyRes: payload['popularity']['nearby_res'],
        topCuisines: payload['popularity']['top_cuisines'],
        popularityRes: payload['popularity']['popularity_res'],
        nightlifeRes: payload['popularity']['nightlife_res'],
        subzone: payload['popularity']['subzone'],
        subzoneId: payload['popularity']['subzone_id'],
        city: payload['popularity']['city'],
      ),
      link: payload['link'],
      nearbyRestaurant: restaurants,
    );
  }
}
