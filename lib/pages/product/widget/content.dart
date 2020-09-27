import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:resty/models/restaurant.dart';
import 'package:resty/services/helper/helper.dart';

class ContentWidget extends StatelessWidget {
  final RestaurantModel restaurant;
  HelperService helper = new HelperService();

  ContentWidget({Key key, this.restaurant}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Pinned.fromSize(
      bounds: Rect.fromLTWH(0.0, 0.0, 375.0, 560.0),
      size: Size(375.0, 752.0),
      pinLeft: true,
      pinRight: true,
      pinTop: true,
      pinBottom: true,
      child:
          // Adobe XD layer: 'content' (group)
          Stack(
        children: <Widget>[
          Pinned.fromSize(
            bounds: Rect.fromLTWH(0.0, 0.0, 375.0, 560.0),
            size: Size(375.0, 560.0),
            pinLeft: true,
            pinRight: true,
            pinTop: true,
            pinBottom: true,
            child:
                // Adobe XD layer: 'content-background' (shape)
                Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(44.0),
                  topRight: Radius.circular(44.0),
                  bottomRight: Radius.circular(11.0),
                  bottomLeft: Radius.circular(44.0),
                ),
                color: const Color(0xfffcf9f7),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x1a000000),
                    offset: Offset(8, -16),
                    blurRadius: 32,
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(32.0, 373.0, 215.0, 133.0),
            size: Size(375.0, 560.0),
            pinLeft: true,
            pinBottom: true,
            fixedWidth: true,
            fixedHeight: true,
            child:
                // Adobe XD layer: 'List2' (group)
                Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 79.0, 375.0, 54.0),
                  size: Size(215.0, 133.0),
                  pinLeft: true,
                  pinRight: true,
                  pinBottom: true,
                  fixedHeight: true,
                  child:
                      // Adobe XD layer: 'Fresh hamburger with' (text)
                      Text(
                    '${restaurant.location.address}, ${restaurant.location.city}',
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: 'Montserrat-Regular',
                      fontSize: 12,
                      color: const Color(0xff656565),
                      height: 1.5,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 34.0, 212.0, 32.0),
                  size: Size(215.0, 133.0),
                  fixedHeight: true,
                  child:
                      // Adobe XD layer: 'Chicken Hamburger' (text)
                      Text(
                    restaurant.name,
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 24,
                      color: const Color(0xff373737),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 0.0, 83.0, 29.0),
                  size: Size(215.0, 133.0),
                  fixedHeight: true,
                  child:
                      // Adobe XD layer: '$30.00' (text)
                      Text(
                    '${restaurant.currency} ${restaurant.averageCostForTwo}',
                    style: TextStyle(
                      fontFamily: 'Montserrat-SemiBold',
                      fontSize: 24,
                      color: const Color(0xff365eff),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(65.0, 8.0, 294.0, 317.0),
            size: Size(375.0, 560.0),
            pinRight: true,
            pinTop: true,
            fixedWidth: true,
            fixedHeight: true,
            child:
                // Adobe XD layer: 'List1' (group)
                Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 75.0, 200.0, 200.0),
                  size: Size(294.0, 317.0),
                  pinLeft: true,
                  pinBottom: true,
                  fixedWidth: true,
                  fixedHeight: true,
                  child:
                      // Adobe XD layer: 'Image' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 0.0, 245.0, 245.0),
                        size: Size(245.0, 245.0),
                        pinLeft: true,
                        pinRight: true,
                        pinTop: true,
                        pinBottom: true,
                        child:
                            // Adobe XD layer: 'Mask' (shape)
                            Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            color: const Color(0xffd8d8d8),
                          ),
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 0.0, 245.0, 245.0),
                        size: Size(245.0, 245.0),
                        pinLeft: true,
                        pinRight: true,
                        pinTop: true,
                        pinBottom: true,
                        child:
                            // Adobe XD layer: 'Image' (group)
                            Stack(
                          children: <Widget>[
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(0.0, 0.0, 245.0, 245.0),
                              size: Size(245.0, 245.0),
                              pinLeft: true,
                              pinRight: true,
                              pinTop: true,
                              pinBottom: true,
                              child:
                                  // Adobe XD layer: 'Mask' (shape)
                                  Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(9999.0, 9999.0)),
                                  color: const Color(0xffd8d8d8),
                                  image: restaurant.thumb.isEmpty
                                      ? null
                                      : DecorationImage(
                                          image: helper.urlValidator(
                                                  restaurant.thumb)
                                              ? NetworkImage(restaurant.thumb)
                                              : AssetImage(restaurant.thumb),
                                          fit: BoxFit.fill,
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
                  bounds: Rect.fromLTWH(72.0, 150.0, 72.0, 48.0),
                  size: Size(294.0, 317.0),
                  fixedWidth: true,
                  fixedHeight: true,
                  child:
                      // Adobe XD layer: 'Btn Play' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 0.0, 72.0, 48.0),
                        size: Size(72.0, 48.0),
                        pinLeft: true,
                        pinRight: true,
                        pinTop: true,
                        pinBottom: true,
                        child:
                            // Adobe XD layer: 'Rectangle' (shape)
                            Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(100.0),
                              topRight: Radius.circular(32.0),
                              bottomRight: Radius.circular(100.0),
                              bottomLeft: Radius.circular(32.0),
                            ),
                            color: const Color(0x99373737),
                          ),
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(24.0, 12.0, 24.0, 24.0),
                        size: Size(72.0, 48.0),
                        fixedWidth: true,
                        fixedHeight: true,
                        child:
                            // Adobe XD layer: 'Play' (group)
                            Stack(
                          children: <Widget>[
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(0.0, 0.0, 24.0, 24.0),
                              size: Size(24.0, 24.0),
                              pinLeft: true,
                              pinRight: true,
                              pinTop: true,
                              pinBottom: true,
                              child:
                                  // Adobe XD layer: 'bound' (shape)
                                  SvgPicture.string(
                                _svg_9750qa,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(7.9, 4.0, 10.0, 16.0),
                              size: Size(24.0, 24.0),
                              pinTop: true,
                              pinBottom: true,
                              fixedWidth: true,
                              child:
                                  // Adobe XD layer: 'Path-10' (shape)
                                  SvgPicture.string(
                                _svg_7imk1l,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(222.0, 8.0, 72.0, 48.0),
                  size: Size(294.0, 317.0),
                  pinRight: true,
                  pinTop: true,
                  fixedWidth: true,
                  fixedHeight: true,
                  child:
                      // Adobe XD layer: 'Btn heart' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 0.0, 72.0, 48.0),
                        size: Size(72.0, 48.0),
                        pinLeft: true,
                        pinRight: true,
                        pinTop: true,
                        pinBottom: true,
                        child:
                            // Adobe XD layer: 'Rectangle' (shape)
                            Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(32.0),
                              bottomLeft: Radius.circular(32.0),
                            ),
                            color: const Color(0xff99adff),
                          ),
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(24.0, 12.0, 24.0, 24.0),
                        size: Size(72.0, 48.0),
                        fixedWidth: true,
                        fixedHeight: true,
                        child:
                            // Adobe XD layer: 'Heart' (group)
                            Stack(
                          children: <Widget>[
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(0.0, 0.0, 24.0, 24.0),
                              size: Size(24.0, 24.0),
                              pinLeft: true,
                              pinRight: true,
                              pinTop: true,
                              pinBottom: true,
                              child:
                                  // Adobe XD layer: 'Shape' (shape)
                                  SvgPicture.string(
                                _svg_9750qa,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(3.0, 4.5, 18.0, 15.0),
                              size: Size(24.0, 24.0),
                              pinLeft: true,
                              pinRight: true,
                              pinTop: true,
                              pinBottom: true,
                              child:
                                  // Adobe XD layer: 'Shape' (shape)
                                  SvgPicture.string(
                                _svg_v0r4hz,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(111.0, 0.0, 24.0, 4.0),
                  size: Size(294.0, 317.0),
                  pinTop: true,
                  fixedWidth: true,
                  fixedHeight: true,
                  child:
                      // Adobe XD layer: 'Rectangle' (shape)
                      Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2.5),
                      color: const Color(0xff365eff),
                    ),
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

const String _svg_9750qa =
    '<svg viewBox="0.0 0.0 24.0 24.0" ><path  d="M 0 0 L 24 0 L 24 24 L 0 24 L 0 0 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_7imk1l =
    '<svg viewBox="7.9 4.0 10.0 16.0" ><path transform="translate(7.87, 4.0)" d="M 9.778535842895508 8.493793487548828 C 9.918789863586426 8.375452041625977 9.999500274658203 8.204324722290039 9.999995231628418 8.024245262145996 C 10.00049018859863 7.844165325164795 9.920721054077148 7.672625541687012 9.781119346618652 7.553563594818115 L 1.072293400764465 0.1555073708295822 C 0.8816385865211487 -0.006591226439923048 0.6105725169181824 -0.045630794018507 0.3794079720973969 0.05571639910340309 C 0.1482434570789337 0.1570635885000229 -0.0001858084578998387 0.3800183832645416 6.267201229093189e-07 0.6256221532821655 L 6.267201229093189e-07 15.37422275543213 C -0.0002484316355548799 15.619553565979 0.1477976590394974 15.8423490524292 0.3785530030727386 15.94390869140625 C 0.6093083024024963 16.04546737670898 0.8801144361495972 16.00701522827148 1.071001529693604 15.84558868408203 L 9.778535842895508 8.493793487548828 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_v0r4hz =
    '<svg viewBox="3.0 4.5 18.0 15.0" ><path transform="translate(3.0, 4.5)" d="M 13.5 0 C 11.89000034332275 0 10.00800037384033 1.825000047683716 9 3 C 7.992000102996826 1.825000047683716 6.110000133514404 0 4.5 0 C 1.651000022888184 0 0 2.221999883651733 0 5.050000190734863 C 0 8.182999610900879 3 11.5 9 15 C 15 11.5 18 8.25 18 5.25 C 18 2.421999931335449 16.34900093078613 0 13.5 0 Z" fill="#365eff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
