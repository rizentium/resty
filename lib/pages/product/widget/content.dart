import 'package:adobe_xd/pinned.dart';
import 'package:flutter/cupertino.dart';
import 'package:resty/models/restaurant.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:resty/services/helper/helper.dart';

class ContentWidget extends StatefulWidget {
  final RestaurantModel restaurant;

  ContentWidget({Key key, this.restaurant}) : super(key: key);

  @override
  _ContentWidgetState createState() => _ContentWidgetState();
}

class _ContentWidgetState extends State<ContentWidget> {
  HelperService helper = new HelperService();

  @override
  Widget build(BuildContext context) {
    // Adobe XD layer: 'content-background' (shape)
    return Stack(
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
        Column(
          children: [
            // Top notch
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Adobe XD layer: 'Rectangle' (shape)
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Container(
                    alignment: Alignment.center,
                    height: 4.0,
                    width: 24.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2.5),
                      color: const Color(0xff365eff),
                    ),
                  ),
                )
              ],
            ),
            // Favorite Button
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: Stack(
                    children: <Widget>[
                      // Adobe XD layer: 'Rectangle' (shape)
                      Container(
                        width: 72.0,
                        height: 48.0,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(32.0),
                            bottomLeft: Radius.circular(32.0),
                          ),
                          color: Color(0xff99adff),
                        ),
                        child: Stack(
                          children: [
                            // Adobe XD layer: 'Shape' (shape)
                            SvgPicture.string(
                              _svg_9750qa,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                            // Adobe XD layer: 'Shape' (shape)
                            SvgPicture.string(
                              _svg_v0r4hz,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            // Thumbnail
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Adobe XD layer: 'Mask' (shape)
                Container(
                  alignment: Alignment.center,
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                    color: const Color(0xffd8d8d8),
                    image: widget.restaurant.thumb.isEmpty
                        ? null
                        : DecorationImage(
                            image: helper.urlValidator(widget.restaurant.thumb)
                                ? NetworkImage(widget.restaurant.thumb)
                                : AssetImage(widget.restaurant.thumb),
                            fit: BoxFit.fill,
                          ),
                  ),
                  child: // Adobe XD layer: 'Rectangle' (shape)
                      Container(
                    alignment: Alignment.center,
                    width: 72,
                    height: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100.0),
                        topRight: Radius.circular(32.0),
                        bottomRight: Radius.circular(100.0),
                        bottomLeft: Radius.circular(32.0),
                      ),
                      color: Color(0x99373737),
                    ),
                    child:
                        // Adobe XD layer: 'Play' (group)
                        Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        // Adobe XD layer: 'Path-10' (shape)
                        SvgPicture.string(
                          _svg_7imk1l,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            // Product Detail
            // Adobe XD layer: 'List2' (group)
            Container(
              padding: EdgeInsets.only(
                left: 30,
                top: 30,
                right: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Adobe XD layer: '$30.00' (text)
                  Text(
                    '${widget.restaurant.currency} ${widget.restaurant.averageCostForTwo}',
                    style: TextStyle(
                      fontFamily: 'Montserrat-SemiBold',
                      fontSize: 24,
                      color: const Color(0xff365eff),
                    ),
                    textAlign: TextAlign.left,
                  ),
                  // Adobe XD layer: 'Chicken Hamburger' (text)
                  Text(
                    widget.restaurant.name,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 24,
                      color: const Color(0xff373737),
                      height: 1.5,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  // Adobe XD layer: 'Fresh hamburger with' (text)
                  Text(
                    '${widget.restaurant.location.address}, ${widget.restaurant.location.city}',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: 'Montserrat-Regular',
                      fontSize: 12,
                      color: const Color(0xff656565),
                      height: 2,
                    ),
                    textAlign: TextAlign.left,
                  )
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}

const String _svg_9750qa =
    '<svg viewBox="0.0 0.0 24.0 24.0" ><path  d="M 0 0 L 24 0 L 24 24 L 0 24 L 0 0 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_7imk1l =
    '<svg viewBox="7.9 4.0 10.0 16.0" ><path transform="translate(7.87, 4.0)" d="M 9.778535842895508 8.493793487548828 C 9.918789863586426 8.375452041625977 9.999500274658203 8.204324722290039 9.999995231628418 8.024245262145996 C 10.00049018859863 7.844165325164795 9.920721054077148 7.672625541687012 9.781119346618652 7.553563594818115 L 1.072293400764465 0.1555073708295822 C 0.8816385865211487 -0.006591226439923048 0.6105725169181824 -0.045630794018507 0.3794079720973969 0.05571639910340309 C 0.1482434570789337 0.1570635885000229 -0.0001858084578998387 0.3800183832645416 6.267201229093189e-07 0.6256221532821655 L 6.267201229093189e-07 15.37422275543213 C -0.0002484316355548799 15.619553565979 0.1477976590394974 15.8423490524292 0.3785530030727386 15.94390869140625 C 0.6093083024024963 16.04546737670898 0.8801144361495972 16.00701522827148 1.071001529693604 15.84558868408203 L 9.778535842895508 8.493793487548828 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_v0r4hz =
    '<svg viewBox="3.0 4.5 18.0 15.0" ><path transform="translate(3.0, 4.5)" d="M 13.5 0 C 11.89000034332275 0 10.00800037384033 1.825000047683716 9 3 C 7.992000102996826 1.825000047683716 6.110000133514404 0 4.5 0 C 1.651000022888184 0 0 2.221999883651733 0 5.050000190734863 C 0 8.182999610900879 3 11.5 9 15 C 15 11.5 18 8.25 18 5.25 C 18 2.421999931335449 16.34900093078613 0 13.5 0 Z" fill="#365eff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
