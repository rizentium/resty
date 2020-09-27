import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:resty/pages/product/Productinfor.dart';

class ItemCard extends StatelessWidget {
  final String title;
  final String price;
  final String description;
  final String thumbnail;
  final bool favorited;

  const ItemCard({
    Key key,
    @required this.title,
    @required this.price,
    @required this.description,
    @required this.thumbnail,
    this.favorited = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 225,
        width: 200,
        padding: EdgeInsets.only(right: 30, bottom: 30.0),
        child: Stack(
          children: <Widget>[
            Pinned.fromSize(
              bounds: Rect.fromLTWH(16.0, 8.0, 168.0, 190.0),
              size: Size(184.0, 198.0),
              pinLeft: true,
              pinRight: true,
              pinTop: true,
              pinBottom: true,
              child:
                  // Adobe XD layer: 'Rectangle' (shape)
                  Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24.0),
                  color: const Color(0xffffffff),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x1a000000),
                      offset: Offset(8, 16),
                      blurRadius: 15,
                    ),
                  ],
                ),
              ),
            ),
            Pinned.fromSize(
              bounds: Rect.fromLTWH(136.0, 16.0, 40.0, 32.0),
              size: Size(184.0, 198.0),
              pinRight: true,
              pinTop: true,
              fixedWidth: true,
              fixedHeight: true,
              child:
                  // Adobe XD layer: 'Like' (group)
                  Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 40.0, 32.0),
                    size: Size(40.0, 32.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child:
                        // Adobe XD layer: 'Rectangle' (shape)
                        Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(2.0),
                          topRight: Radius.circular(20.0),
                          bottomRight: Radius.circular(2.0),
                          bottomLeft: Radius.circular(20.0),
                        ),
                        color: const Color(0xff99adff),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(8.0, 4.0, 24.0, 24.0),
                    size: Size(40.0, 32.0),
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
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
                            color: this.favorited ? null : Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Pinned.fromSize(
              bounds: Rect.fromLTWH(0.0, 0.0, 105.0, 105.0),
              size: Size(184.0, 198.0),
              pinLeft: true,
              pinTop: true,
              fixedWidth: true,
              fixedHeight: true,
              child:
                  // Adobe XD layer: 'twenty20_3998e4bc-f…' (group)
                  Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 105.0, 105.0),
                    size: Size(105.0, 105.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child:
                        // Adobe XD layer: 'Mask' (shape)
                        Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        color: const Color(0xffd8d8d8),
                        image: this.thumbnail.isEmpty
                            ? null
                            : DecorationImage(
                                image: urlValidator(this.thumbnail)
                                    ? NetworkImage(this.thumbnail)
                                    : AssetImage(this.thumbnail),
                                fit: BoxFit.fill,
                              ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Pinned.fromSize(
              bounds: Rect.fromLTWH(35.0, 113.0, 131.0, 69.0),
              size: Size(184.0, 198.0),
              pinRight: true,
              pinBottom: true,
              fixedWidth: true,
              fixedHeight: true,
              child:
                  // Adobe XD layer: 'Infor' (group)
                  Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(10.0, 43.0, 120.0, 26.0),
                    size: Size(131.0, 69.0),
                    pinLeft: true,
                    pinRight: true,
                    pinBottom: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'Fresh hamburger with' (text)
                        Text(
                      this.description,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(
                        fontFamily: 'Montserrat-Regular',
                        fontSize: 10,
                        color: const Color(0xff656565),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(10.0, 0.0, 125.0, 18.0),
                    size: Size(131.0, 69.0),
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: '$30.00' (text)
                        Text(
                      this.price,
                      style: TextStyle(
                        fontFamily: 'Montserrat-SemiBold',
                        fontSize: 14,
                        color: const Color(0xff365eff),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(10.0, 20.0, 125.0, 19.0),
                    size: Size(131.0, 69.0),
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'Chicken Hamburger' (text)
                        Text(
                      this.title,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 14,
                        color: const Color(0xff373737),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      onTap: () => _onTap(context),
    );
  }

  _onTap(context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Productinfor()),
    );
  }

  urlValidator(String url) {
    return RegExp(r"https://+").hasMatch(url);
  }
}

const String _svg_9750qa =
    '<svg viewBox="0.0 0.0 24.0 24.0" ><path  d="M 0 0 L 24 0 L 24 24 L 0 24 L 0 0 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_v0r4hz =
    '<svg viewBox="3.0 4.5 18.0 15.0" ><path transform="translate(3.0, 4.5)" d="M 13.5 0 C 11.89000034332275 0 10.00800037384033 1.825000047683716 9 3 C 7.992000102996826 1.825000047683716 6.110000133514404 0 4.5 0 C 1.651000022888184 0 0 2.221999883651733 0 5.050000190734863 C 0 8.182999610900879 3 11.5 9 15 C 15 11.5 18 8.25 18 5.25 C 18 2.421999931335449 16.34900093078613 0 13.5 0 Z" fill="#365eff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
