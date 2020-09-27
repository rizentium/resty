import 'dart:convert';

import 'package:resty/models/geocode.dart';
import 'package:resty/services/providers/zomato/common.dart';

class ZomatoRepository {
  ZomatoCommonProvider _commonProvider = new ZomatoCommonProvider();

  Future<dynamic> getCuisines({String lat, String lon}) async {
    return await this._commonProvider.cuisines(lat: lat, lon: lon);
  }

  Future<GeocodeModel> getGeocode({String lat, String lon}) async {
    try {
      var data = await this._commonProvider.geocode(lat: lat, lon: lon);
      var request = jsonDecode(data.body);

      var result = GeocodeModel.fromJSON(request);
      return result;
    } catch (err) {
      throw err;
    }
  }
}
