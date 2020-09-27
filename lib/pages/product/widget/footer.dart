import 'package:adobe_xd/pinned.dart';
import 'package:flutter/cupertino.dart';

class FooterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Pinned.fromSize(
      bounds: Rect.fromLTWH(0.0, 551.0, 375.0, 201.0),
      size: Size(375.0, 752.0),
      pinLeft: true,
      pinRight: true,
      pinBottom: true,
      fixedHeight: true,
      child:
          // Adobe XD layer: 'footer' (group)
          Stack(
        children: <Widget>[
          Pinned.fromSize(
            bounds: Rect.fromLTWH(0.0, 0.0, 375.0, 201.0),
            size: Size(375.0, 201.0),
            pinLeft: true,
            pinRight: true,
            pinTop: true,
            pinBottom: true,
            child:
                // Adobe XD layer: 'addToCard-background' (shape)
                Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(44.0),
                ),
                color: const Color(0xff365eff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x1a000000),
                    offset: Offset(8, 16),
                    blurRadius: 32,
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(133.0, 126.0, 110.0, 22.0),
            size: Size(375.0, 201.0),
            fixedHeight: true,
            child:
                // Adobe XD layer: 'addToCard-text' (text)
                Text(
              'Add to card',
              style: TextStyle(
                fontFamily: 'Montserrat-Bold',
                fontSize: 18,
                color: const Color(0xffffffff),
                height: 1.3333333333333333,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
