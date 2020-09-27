import 'package:adobe_xd/pinned.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenuWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SideMenuWidget();
}

class _SideMenuWidget extends State<SideMenuWidget> {
  @override
  Widget build(BuildContext context) {
    // Adobe XD layer: 'Menu' (group)
    return SizedBox(
      width: 86.0,
      height: 812.0,
      child: Stack(
        children: <Widget>[
          Pinned.fromSize(
            bounds: Rect.fromLTWH(0.0, 0.0, 86.0, 812.0),
            size: Size(86.0, 812.0),
            pinLeft: true,
            pinRight: true,
            pinTop: true,
            pinBottom: true,
            child:
                // Adobe XD layer: 'Path 3' (shape)
                SvgPicture.string(
              _svg_4uzea6,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(16.0, 729.5, 24.0, 24.0),
            size: Size(86.0, 812.0),
            pinBottom: true,
            fixedWidth: true,
            fixedHeight: true,
            child:
                // Adobe XD layer: 'cart' (group)
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
                      // Adobe XD layer: 'Rectangle' (shape)
                      Container(
                    decoration: BoxDecoration(),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(3.6, 0.5, 16.8, 23.0),
                  size: Size(24.0, 24.0),
                  pinTop: true,
                  pinBottom: true,
                  fixedWidth: true,
                  child:
                      // Adobe XD layer: 'shopping-bag' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(5.2, 0.0, 6.4, 5.0),
                        size: Size(16.8, 23.0),
                        pinTop: true,
                        fixedWidth: true,
                        fixedHeight: true,
                        child:
                            // Adobe XD layer: 'Path' (shape)
                            SvgPicture.string(
                          _svg_smpafo,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(3.9, 7.0, 2.0, 2.0),
                        size: Size(16.8, 23.0),
                        fixedWidth: true,
                        fixedHeight: true,
                        child:
                            // Adobe XD layer: 'Oval' (shape)
                            Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            border: Border.all(
                                width: 1.0, color: const Color(0xff111111)),
                          ),
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(10.9, 7.0, 2.0, 2.0),
                        size: Size(16.8, 23.0),
                        fixedWidth: true,
                        fixedHeight: true,
                        child:
                            // Adobe XD layer: 'Oval' (shape)
                            Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            border: Border.all(
                                width: 1.0, color: const Color(0xff111111)),
                          ),
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 5.0, 16.8, 18.0),
                        size: Size(16.8, 23.0),
                        pinLeft: true,
                        pinRight: true,
                        pinTop: true,
                        pinBottom: true,
                        child:
                            // Adobe XD layer: 'Path' (shape)
                            SvgPicture.string(
                          _svg_5mhuvd,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.2, 20.0, 16.3, 1.0),
                        size: Size(16.8, 23.0),
                        pinLeft: true,
                        pinRight: true,
                        pinBottom: true,
                        fixedHeight: true,
                        child:
                            // Adobe XD layer: 'Path' (shape)
                            SvgPicture.string(
                          _svg_kr8mfj,
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
            bounds: Rect.fromLTWH(20.0, 148.0, 24.0, 24.0),
            size: Size(86.0, 812.0),
            fixedWidth: true,
            fixedHeight: true,
            child:
                // Adobe XD layer: 'Search' (group)
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
                  bounds: Rect.fromLTWH(15.0, 15.0, 6.0, 6.0),
                  size: Size(24.0, 24.0),
                  pinRight: true,
                  pinBottom: true,
                  fixedWidth: true,
                  fixedHeight: true,
                  child:
                      // Adobe XD layer: 'Path-2' (shape)
                      SvgPicture.string(
                    _svg_x9i07p,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(4.0, 4.0, 14.0, 14.0),
                  size: Size(24.0, 24.0),
                  fixedWidth: true,
                  fixedHeight: true,
                  child:
                      // Adobe XD layer: 'Path' (shape)
                      SvgPicture.string(
                    _svg_hucw6b,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(20.0, 76.0, 24.0, 24.0),
            size: Size(86.0, 812.0),
            pinTop: true,
            fixedWidth: true,
            fixedHeight: true,
            child:
                // Adobe XD layer: 'Layout-4-Blocks' (group)
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
                  bounds: Rect.fromLTWH(4.0, 4.0, 7.0, 7.0),
                  size: Size(24.0, 24.0),
                  fixedWidth: true,
                  fixedHeight: true,
                  child:
                      // Adobe XD layer: 'Rectangle-7' (shape)
                      Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1.5),
                      color: const Color(0xff111111),
                    ),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(4.0, 4.0, 16.0, 16.0),
                  size: Size(24.0, 24.0),
                  pinLeft: true,
                  pinRight: true,
                  pinTop: true,
                  pinBottom: true,
                  child:
                      // Adobe XD layer: 'Combined-Shape' (shape)
                      SvgPicture.string(
                    _svg_2ugqxp,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(15.0, 640.0, 36.0, 17.0),
            size: Size(86.0, 812.0),
            fixedHeight: true,
            child: Transform.rotate(
              angle: -1.5708,
              child:
                  // Adobe XD layer: 'Home' (text)
                  Text(
                'Home',
                style: TextStyle(
                  fontFamily: 'PlayfairDisplay-Bold',
                  fontSize: 13,
                  color: const Color(0xff365eff),
                  height: 1.8461538461538463,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(9.0, 535.0, 42.0, 18.0),
            size: Size(86.0, 812.0),
            fixedHeight: true,
            child: Transform.rotate(
              angle: -1.5708,
              child:
                  // Adobe XD layer: 'Invoice' (text)
                  Text(
                'Invoice',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 13,
                  color: const Color(0xff000000),
                  height: 1.8461538461538463,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(-4.5, 415.0, 68.0, 18.0),
            size: Size(86.0, 812.0),
            fixedHeight: true,
            child: Transform.rotate(
              angle: -1.5708,
              child:
                  // Adobe XD layer: 'Notification' (text)
                  Text(
                'Notification',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 13,
                  color: const Color(0xff000000),
                  height: 1.8461538461538463,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(-1.0, 285.0, 62.0, 18.0),
            size: Size(86.0, 812.0),
            fixedHeight: true,
            child: Transform.rotate(
              angle: -1.5708,
              child:
                  // Adobe XD layer: 'My Profile' (text)
                  Text(
                'My  Profile',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 13,
                  color: const Color(0xff000000),
                  height: 1.8461538461538463,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_smpafo =
    '<svg viewBox="5.8 0.5 6.4 5.0" ><path transform="translate(5.79, 0.53)" d="M 0 4.965391635894775 L 0.3600000143051147 2.465391635894775 C 0.5659260153770447 1.049864888191223 1.77957284450531 0 3.210000038146973 0 C 4.640427112579346 1.110223024625157e-16 5.854074001312256 1.049864888191223 6.059999942779541 2.465391635894775 L 6.420000076293945 4.995391845703125" fill="none" stroke="#111111" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_5mhuvd =
    '<svg viewBox="0.6 5.5 16.8 18.0" ><path transform="translate(0.61, 5.5)" d="M 15.76607513427734 18.00001907348633 L 1.006075382232666 18.00001907348633 C 0.7206519246101379 18.00175094604492 0.4480909407138824 17.88143348693848 0.2570436894893646 17.66937065124512 C 0.06599640101194382 17.45730972290039 -0.0253270547837019 17.17371559143066 0.006075363140553236 16.89001846313477 L 1.786075353622437 0.8900187015533447 C 1.842390418052673 0.381083756685257 2.274043560028076 -0.003087532008066773 2.786075353622437 1.870258347480558e-05 L 13.99607563018799 1.870258347480558e-05 C 14.50810718536377 -0.003087532008066773 14.93976020812988 0.381083756685257 14.99607563018799 0.8900187015533447 L 16.77607536315918 16.89001846313477 C 16.80770301818848 17.17546653747559 16.71508026123047 17.46073341369629 16.52179718017578 17.67315292358398 C 16.32851409912109 17.88557243347168 16.05323219299316 18.00463676452637 15.76607513427734 18.00001907348633 Z" fill="none" stroke="#111111" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_kr8mfj =
    '<svg viewBox="0.8 20.5 16.3 1.0" ><path transform="translate(0.83, 20.0)" d="M 16.34000015258789 0.5 L 0 0.5" fill="none" stroke="#111111" stroke-width="1" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_4uzea6 =
    '<svg viewBox="0.0 0.0 86.0 812.0" ><path  d="M 0 0 L 0 0 C 31.77210426330566 0 63.77737426757813 32.00526809692383 63.77737426757813 63.77737426757813 L 63.77737426757813 575.6444091796875 C 63.77737426757813 587.564453125 66.77847290039063 599.2926025390625 72.50396728515625 609.74755859375 L 79.25511932373047 622.0753784179688 C 88.38121032714844 638.7399291992188 88.2415771484375 659.182373046875 78.88868713378906 675.720703125 L 72.97564697265625 686.176513671875 C 66.94612121582031 696.8382568359375 63.77737426757813 708.8785400390625 63.77737426757813 721.1271362304688 L 63.77737426757813 748.22265625 C 63.77737426757813 779.9947509765625 31.77210426330566 812 2.984279490192421e-13 812 L 0 812 L 0 0 Z" fill="#edf0ff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_x9i07p =
    '<svg viewBox="15.0 15.0 6.0 6.0" ><path transform="translate(15.01, 15.01)" d="M 0.2807120084762573 1.694712042808533 C -0.09826018661260605 1.302333116531372 -0.09284035116434097 0.6786272525787354 0.2928934395313263 0.2928934395313263 C 0.6786272525787354 -0.09284035116434097 1.302333116531372 -0.09826018661260605 1.694712042808533 0.2807120084762573 L 5.694712162017822 4.280712127685547 C 6.073684215545654 4.673090934753418 6.068264484405518 5.296796798706055 5.682530403137207 5.682530403137207 C 5.296796798706055 6.068264484405518 4.673090934753418 6.073684215545654 4.280712127685547 5.694712162017822 L 0.2807120084762573 1.694712042808533 Z" fill="#111111" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_hucw6b =
    '<svg viewBox="4.0 4.0 14.0 14.0" ><path transform="translate(4.0, 4.0)" d="M 0.9378000497817993 10.50030040740967 C -0.3122999966144562 8.334000587463379 -0.3122999966144562 5.665500164031982 0.9378000497817993 3.500100135803223 C 2.187900066375732 1.333800077438354 4.499100208282471 0 7.000200271606445 0 C 10.86570072174072 0 14.00040054321289 3.133800029754639 14.00040054321289 7.000200271606445 C 14.00040054321289 10.86570072174072 10.86570072174072 14.00040054321289 7.000200271606445 14.00040054321289 C 4.499100208282471 14.00040054321289 2.187900066375732 12.66569995880127 0.9378000497817993 10.50030040740967 Z" fill="none" stroke="#abadb7" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_2ugqxp =
    '<svg viewBox="4.0 4.0 16.0 16.0" ><path transform="translate(4.0, 4.0)" d="M 10.50030040740967 16.00020027160645 C 9.67140007019043 16.00020027160645 9 15.32880020141602 9 14.49990081787109 L 9 10.50030040740967 C 9 9.67140007019043 9.67140007019043 9 10.50030040740967 9 L 14.49990081787109 9 C 15.32880020141602 9 16.00020027160645 9.67140007019043 16.00020027160645 10.50030040740967 L 16.00020027160645 14.49990081787109 C 16.00020027160645 15.32880020141602 15.32880020141602 16.00020027160645 14.49990081787109 16.00020027160645 L 10.50030040740967 16.00020027160645 Z M 1.500300049781799 16.00020027160645 C 0.6714000105857849 16.00020027160645 0 15.32880020141602 0 14.49990081787109 L 0 10.50030040740967 C 0 9.67140007019043 0.6714000105857849 9 1.500300049781799 9 L 5.499900341033936 9 C 6.328800201416016 9 7.000200271606445 9.67140007019043 7.000200271606445 10.50030040740967 L 7.000200271606445 14.49990081787109 C 7.000200271606445 15.32880020141602 6.328800201416016 16.00020027160645 5.499900341033936 16.00020027160645 L 1.500300049781799 16.00020027160645 Z M 10.50030040740967 7.000200271606445 C 9.67140007019043 7.000200271606445 9 6.328800201416016 9 5.499900341033936 L 9 1.500300049781799 C 9 0.6714000105857849 9.67140007019043 0 10.50030040740967 0 L 14.49990081787109 0 C 15.32880020141602 0 16.00020027160645 0.6714000105857849 16.00020027160645 1.500300049781799 L 16.00020027160645 5.499900341033936 C 16.00020027160645 6.328800201416016 15.32880020141602 7.000200271606445 14.49990081787109 7.000200271606445 L 10.50030040740967 7.000200271606445 Z" fill="#111111" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_9750qa =
    '<svg viewBox="0.0 0.0 24.0 24.0" ><path  d="M 0 0 L 24 0 L 24 24 L 0 24 L 0 0 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
