// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medic/constants.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

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
            padding: EdgeInsets.only(top: getH(50)),
            child: Column(
              children: [
                Text(
                  'About us',
                  style: kText6,
                ),
                SizedBox(
                  height: getH(5),
                ),
                Divider(
                  thickness: 1,
                  height: 1,
                  color: Color(0xff727a9c),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: getH(89), left: getw(25), right: getw(10)),
            child: Column(
              children: [
                Text(
                  '            Medic-Maamo is an online mobile '
                  'application designed to provide friendly '
                  'and simple end user interface for '
                  'prevention  and management of lifestyle '
                  'related diseases such as diabetes, cancer, '
                  'cardiovascular and respiratory diseases.'
                  '\n\nMedic-Maamo also provides medical tips /reminders, location of nearby accredited'
                  ' health, pharmaceuticals and fitness centers '
                  'well structured appointment with healthcare '
                  'professionals, and AI diagnosis '
                  '(as afuture update). read more...',
                  style: kText3,
                ),
                SizedBox(
                  height: getH(5),
                ),
                Text(
                  '   \nShare the app and earn when  '
                  'your referrer upgrade to a premium account',
                  style: kText19,
                ),
                SizedBox(
                  height: getH(16),
                ),
                CircleAvatar(
                  radius: 12,
                  child: SvgPicture.asset('images/peo.svg'),
                  backgroundColor: Color(0xffd9d9d9),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 12,
                      backgroundColor: Color(0xffd9d9d9),
                      child: SvgPicture.asset('images/peo.svg'),
                    ),
                    SvgPicture.asset('images/gift.svg'),
                    CircleAvatar(
                      radius: 12,
                      child: SvgPicture.asset('images/peo.svg'),
                      backgroundColor: Color(0xffd9d9d9),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
