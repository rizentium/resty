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
          Transform.translate(
            offset: Offset(0.0, 60.0),
            child:
                // Adobe XD layer: 'Product Information' (group)
                SizedBox(
              child: Stack(
                children: <Widget>[
                  FooterWidget(),
                  ButtonNavigator(),
                  ContentWidget(
                    restaurant: widget.restaurant,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
