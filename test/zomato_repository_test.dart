// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:resty/services/repositories/zomato.dart';

void main() {
  test('unit testing for zomoto repository', () async {
    var repository = new ZomatoRepository();
    var result =
        (await repository.getGeocode(lat: '1.290270', lon: '103.851959'));
    expect(
      result.link,
      'https://www.zomato.com/singapore/downtown-core-restaurants',
    );

    result.nearbyRestaurant.forEach((element) {
      expect(element.apikey, isNotEmpty);
      expect(element.id, isNotEmpty);
      expect(element.name, isNotEmpty);
    });
  });
}
