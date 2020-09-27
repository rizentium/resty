import 'package:adobe_xd/pinned.dart';
import 'package:flutter/cupertino.dart';

class ButtonNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Pinned.fromSize(
      bounds: Rect.fromLTWH(0.0, 326.0, 375.0, 326.0),
      size: Size(375.0, 752.0),
      pinLeft: true,
      pinRight: true,
      pinBottom: true,
      fixedHeight: true,
      child:
          // Adobe XD layer: 'btn-nav' (group)
          Stack(
        children: <Widget>[
          Pinned.fromSize(
            bounds: Rect.fromLTWH(0.0, 0.0, 375.0, 326.0),
            size: Size(375.0, 326.0),
            pinLeft: true,
            pinRight: true,
            pinTop: true,
            pinBottom: true,
            child:
                // Adobe XD layer: 'Rectangle Copy' (shape)
                Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(44.0),
                  bottomRight: Radius.circular(11.0),
                  bottomLeft: Radius.circular(44.0),
                ),
                color: const Color(0xffedf0ff),
              ),
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(32.0, 258.0, 311.0, 44.0),
            size: Size(375.0, 326.0),
            pinLeft: true,
            pinRight: true,
            pinBottom: true,
            fixedHeight: true,
            child:
                // Adobe XD layer: 'Qty' (group)
                Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(167.0, 0.0, 44.0, 44.0),
                  size: Size(311.0, 44.0),
                  pinTop: true,
                  pinBottom: true,
                  fixedWidth: true,
                  child:
                      // Adobe XD layer: 'decrease' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 0.0, 44.0, 44.0),
                        size: Size(44.0, 44.0),
                        pinLeft: true,
                        pinRight: true,
                        pinTop: true,
                        pinBottom: true,
                        child:
                            // Adobe XD layer: 'Oval' (shape)
                            Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            color: const Color(0xffffffff),
                          ),
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(14.0, 21.0, 16.0, 2.0),
                        size: Size(44.0, 44.0),
                        fixedWidth: true,
                        fixedHeight: true,
                        child:
                            // Adobe XD layer: 'Plus Copy' (group)
                            Stack(
                          children: <Widget>[
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(0.0, 0.0, 16.0, 2.0),
                              size: Size(16.0, 2.0),
                              pinLeft: true,
                              pinRight: true,
                              pinTop: true,
                              pinBottom: true,
                              child:
                                  // Adobe XD layer: 'Rectangle-185' (shape)
                                  Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(1.0),
                                  color: const Color(0xff365eff),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(267.0, 0.0, 44.0, 44.0),
                  size: Size(311.0, 44.0),
                  pinRight: true,
                  pinTop: true,
                  pinBottom: true,
                  fixedWidth: true,
                  child:
                      // Adobe XD layer: 'increase' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 0.0, 44.0, 44.0),
                        size: Size(44.0, 44.0),
                        pinLeft: true,
                        pinRight: true,
                        pinTop: true,
                        pinBottom: true,
                        child:
                            // Adobe XD layer: 'Oval Copy' (shape)
                            Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            color: const Color(0xffffffff),
                          ),
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(14.0, 14.0, 16.0, 16.0),
                        size: Size(44.0, 44.0),
                        fixedWidth: true,
                        fixedHeight: true,
                        child:
                            // Adobe XD layer: 'Plus' (group)
                            Stack(
                          children: <Widget>[
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(0.0, 7.0, 16.0, 2.0),
                              size: Size(16.0, 16.0),
                              pinLeft: true,
                              pinRight: true,
                              fixedHeight: true,
                              child:
                                  // Adobe XD layer: 'Rectangle-185' (shape)
                                  Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(1.0),
                                  color: const Color(0xff365eff),
                                ),
                              ),
                            ),
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(0.0, 7.0, 16.0, 2.0),
                              size: Size(16.0, 16.0),
                              pinTop: true,
                              pinBottom: true,
                              fixedWidth: true,
                              child: Transform.rotate(
                                angle: 1.5708,
                                child:
                                    // Adobe XD layer: 'Rectangle-185-Copy' (shape)
                                    Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(1.0),
                                    color: const Color(0xff365eff),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 11.0, 65.0, 22.0),
                  size: Size(311.0, 44.0),
                  fixedHeight: true,
                  child:
                      // Adobe XD layer: 'Quality' (text)
                      Text(
                    'Quality',
                    style: TextStyle(
                      fontFamily: 'Montserrat-Medium',
                      fontSize: 18,
                      color: const Color(0xff656565),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(235.0, 11.0, 7.0, 22.0),
                  size: Size(311.0, 44.0),
                  fixedHeight: true,
                  child:
                      // Adobe XD layer: '1' (text)
                      Text(
                    '1',
                    style: TextStyle(
                      fontFamily: 'Montserrat-Bold',
                      fontSize: 18,
                      color: const Color(0xff656565),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
