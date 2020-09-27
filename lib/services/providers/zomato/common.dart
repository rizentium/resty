import 'package:http/http.dart' as http;

class ZomatoCommonProvider {
  var _host = 'https://developers.zomato.com/api/v2.1';
  var _headers = {'user-key': '1e3c349cc25d35cea4a89cf86995cd6b'};

  /// Get a list of all cuisines of restaurants listed in a city
  Future<dynamic> cuisines({String lat, String lon}) async {
    try {
      var url = '$_host/cuisines?city_id=52&lat=$lat&lon=$lon';
      return (await http.get(url, headers: _headers));
    } catch (err) {
      throw err;
    }
  }

  /// Get Foodie and Nightlife Index, list of popular cuisines and
  /// nearby restaurants around the given coordinates
  Future<http.Response> geocode({String lat, String lon}) async {
    try {
      var url = '$_host/geocode?lat=$lat&lon=$lon';
      return (await http.get(url, headers: _headers));
    } catch (err) {
      throw err;
    }
  }
}
