import 'package:equatable/equatable.dart';

class RestaurantModel extends Equatable {
  final dynamic r;
  final String apikey;
  final String id;
  final String name;
  final String url;
  final _Location location;
  final int switchToOrderMenu;
  final String cuisines;
  final int averageCostForTwo;
  final int priceRange;
  final String currency;
  final List<dynamic> offers;
  final int opentableSupport;
  final int isZomatoBookRes;
  final String mezzoProvider;
  final int isBookFormWebView;
  final String bookFormWebViewUrl;
  final String bookAgainUrl;
  final String thumb;
  final _UserRating userRating;
  final String photosUrl;
  final String menuUrl;
  final String featuredImage;
  final int hasOnlineDelivery;
  final int isDeliveringNow;
  final String storeType;
  final bool includeBogoOffers;
  final String deeplink;
  final int isTableReservationSupported;
  final int hasTableBooking;
  final String eventsUrl;

  RestaurantModel({
    this.r,
    this.apikey,
    this.id,
    this.name,
    this.url,
    this.location,
    this.switchToOrderMenu,
    this.cuisines,
    this.averageCostForTwo,
    this.priceRange,
    this.currency,
    this.offers,
    this.opentableSupport,
    this.isZomatoBookRes,
    this.mezzoProvider,
    this.isBookFormWebView,
    this.bookFormWebViewUrl,
    this.bookAgainUrl,
    this.thumb,
    this.userRating,
    this.photosUrl,
    this.menuUrl,
    this.featuredImage,
    this.hasOnlineDelivery,
    this.isDeliveringNow,
    this.storeType,
    this.includeBogoOffers,
    this.deeplink,
    this.isTableReservationSupported,
    this.hasTableBooking,
    this.eventsUrl,
  });

  @override
  List<Object> get props => [
        r,
        apikey,
        id,
        name,
        url,
        location,
        switchToOrderMenu,
        cuisines,
        averageCostForTwo,
        priceRange,
        currency,
        offers,
        opentableSupport,
        isZomatoBookRes,
        mezzoProvider,
        isBookFormWebView,
        bookFormWebViewUrl,
        bookAgainUrl,
        thumb,
        userRating
      ];

  factory RestaurantModel.fromJSON(dynamic payload) => RestaurantModel(
        r: payload['restaurant']['R'],
        apikey: payload['restaurant']['apikey'],
        id: payload['restaurant']['id'],
        name: payload['restaurant']['name'],
        url: payload['restaurant']['url'],
        location: _Location(
          address: payload['restaurant']['location']['address'],
          locality: payload['restaurant']['location']['locality'],
          city: payload['restaurant']['location']['city'],
          cityId: payload['restaurant']['location']['city_id'],
          latitude: payload['restaurant']['location']['latitude'],
          longitude: payload['restaurant']['location']['longitude'],
          zipcode: payload['restaurant']['location']['zipcode'],
          countryId: payload['restaurant']['location']['country_id'],
          localityVerbose: payload['restaurant']['location']
              ['locality_verbose'],
        ),
        switchToOrderMenu: payload['restaurant']['switch_to_order_menu'],
        cuisines: payload['restaurant']['cuisines'],
        averageCostForTwo: payload['restaurant']['average_cost_for_two'],
        priceRange: payload['restaurant']['price_range'],
        currency: payload['restaurant']['currency'],
        offers: payload['restaurant']['offers'],
        opentableSupport: payload['restaurant']['opentable_support'],
        isZomatoBookRes: payload['restaurant']['is_zomato_book_res'],
        mezzoProvider: payload['restaurant']['mezzo_provider'],
        isBookFormWebView: payload['restaurant']['is_book_form_web_view'],
        bookFormWebViewUrl: payload['restaurant']['book_form_web_view_url'],
        bookAgainUrl: payload['restaurant']['book_again_url'],
        thumb: payload['restaurant']['thumb'],
        userRating: _UserRating(
          aggregateRating: payload['restaurant']['user_rating']
              ['aggregate_rating'],
          ratingText: payload['restaurant']['user_rating']['rating_text'],
          ratingColor: payload['restaurant']['user_rating']['rating_color'],
          ratingObj: payload['restaurant']['user_rating']['rating_obj'],
          votes: payload['restaurant']['user_rating']['votes'],
        ),
        photosUrl: payload['restaurant']['photos_url'],
        menuUrl: payload['restaurant']['menu_url'],
        featuredImage: payload['restaurant']['featured_image'],
        hasOnlineDelivery: payload['restaurant']['has_online_delivery'],
        isDeliveringNow: payload['restaurant']['is_delivering_now'],
        storeType: payload['restaurant']['store_type'],
        includeBogoOffers: payload['restaurant']['include_bogo_offers'],
        deeplink: payload['restaurant']['deeplink'],
        isTableReservationSupported: payload['restaurant']
            ['is_table_reservation_supported'],
        hasTableBooking: payload['restaurant']['has_table_booking'],
        eventsUrl: payload['restaurant']['events_url'],
      );
}

class _Location extends Equatable {
  final String address;
  final String locality;
  final String city;
  final int cityId;
  final String latitude;
  final String longitude;
  final String zipcode;
  final int countryId;
  final String localityVerbose;

  _Location({
    this.address,
    this.locality,
    this.city,
    this.cityId,
    this.latitude,
    this.longitude,
    this.zipcode,
    this.countryId,
    this.localityVerbose,
  });

  @override
  List<Object> get props => [
        this.address,
        this.locality,
        this.city,
        this.cityId,
        this.latitude,
        this.longitude,
        this.zipcode,
        this.countryId,
        this.localityVerbose,
      ];
}

class _UserRating extends Equatable {
  final String aggregateRating;
  final String ratingText;
  final String ratingColor;
  final Object ratingObj;
  final int votes;

  _UserRating({
    this.aggregateRating,
    this.ratingText,
    this.ratingColor,
    this.ratingObj,
    this.votes,
  });
  @override
  List<Object> get props => [aggregateRating, ratingText, ratingColor, votes];
}
