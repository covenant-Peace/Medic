// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medic/constants.dart';

class Ath extends StatefulWidget {
  const Ath({Key? key}) : super(key: key);

  @override
  State<Ath> createState() => _AthState();
}

class _AthState extends State<Ath> {
  @override
  Widget build(BuildContext context) {
    double getH(double height) {
      return (height / 812) * MediaQuery.of(context).size.height;
    }

    double getw(double width) {
      return (width / 375) * MediaQuery.of(context).size.width;
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SvgPicture.asset('images/semi.svg'),
          Padding(
            padding: EdgeInsets.only(top: getH(74), left: getw(9), right: getw(9)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('images/scl.png'),
                Padding(
                  padding: EdgeInsets.only(left: getw(12), top: getH(12)),
                  child: Text(
                    'Introduction \nAtherosclerosis, the '
                    'leading cause of heart attacks, strokes and '
                    'peripheral vascular diseases is a condition '
                    'where the arteries in the body transporting oxygen, '
                    'nutrients and blood harden. One of the causes of '
                    'atherosclerosis is plaque build-up, wherethe '
                    'walls of the blood vessels get narrowed, making it '
                    'harder for blood to get pumped to the different organs '
                    'in the body. '
                    '\nWhen the arteries of the heart are affected, chest pain or '
                    'pressure (angina) may be experienced. ',
                    style: kText4,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
