import 'package:flutter/material.dart';
import 'package:resty/models/restaurant.dart';
import 'package:resty/pages/product/widget/btn-nav.dart';
import 'package:resty/pages/product/widget/content.dart';
import 'package:resty/pages/product/widget/footer.dart';

class ProductPage extends StatefulWidget {
  final RestaurantModel restaurant;

  const ProductPage({Key key, this.restaurant}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _ProductPage();
}

class _ProductPage extends State<ProductPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          // Adobe XD layer: 'Product Information' (group)
          Stack(
            children: <Widget>[
              FooterWidget(),
              ButtonNavigator(),
              Padding(
                padding: EdgeInsets.only(top: 70),
                child: SizedBox(
                  height: 425.0,
                  child: ContentWidget(
                    restaurant: widget.restaurant,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
