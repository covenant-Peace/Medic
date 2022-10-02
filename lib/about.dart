// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

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
                  backgroundColor: Color(0xffd9d9d9),
                  child: SvgPicture.asset('images/peo.svg'),
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
                      // ignore: sort_child_properties_last
                      child: SvgPicture.asset('images/peo.svg'),
                      backgroundColor: Color(0xffd9d9d9),
                    ),
                  ],
                ),
                SizedBox(
                  height: getH(11.06),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: getw(130),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(
                            top: BorderSide(
                                color: Color.fromRGBO(83, 84, 97, 0.2),
                                width: 1,
                                style: BorderStyle.solid),
                            bottom: BorderSide(
                                color: Color.fromRGBO(83, 84, 97, 0.2),
                                width: 1,
                                style: BorderStyle.solid),
                            left: BorderSide(
                                color: Color.fromRGBO(83, 84, 97, 0.2),
                                width: 1,
                                style: BorderStyle.solid),
                            right: BorderSide(
                                color: Color.fromRGBO(83, 84, 97, 0.2),
                                width: 1,
                                style: BorderStyle.solid),
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.25), blurRadius: 4)
                          ]),
                      padding: EdgeInsets.only(
                        left: getw(7),
                        right: getw(8),
                        top: getH(3),
                        // bottom: getH(3)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Your referrer ID:',
                            style: kText20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'W022G8',
                                style: kText21,
                              ),
                              SvgPicture.asset('images/box.svg')
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: getw(10),
                    ),
                    Container(
                      width: getw(62),
                      height: getH(22),
                      decoration: BoxDecoration(
                          color: Color(0xff392cfe),
                          borderRadius: BorderRadius.circular(5),
                          border: Border(
                            top: BorderSide(
                                color: Color.fromRGBO(83, 84, 97, 0.2),
                                width: 1,
                                style: BorderStyle.solid),
                            bottom: BorderSide(
                                color: Color.fromRGBO(83, 84, 97, 0.2),
                                width: 1,
                                style: BorderStyle.solid),
                            left: BorderSide(
                                color: Color.fromRGBO(83, 84, 97, 0.2),
                                width: 1,
                                style: BorderStyle.solid),
                            right: BorderSide(
                                color: Color.fromRGBO(83, 84, 97, 0.2),
                                width: 1,
                                style: BorderStyle.solid),
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.25), blurRadius: 4)
                          ]),
                      padding: EdgeInsets.only(
                          left: getw(9),
                          right: getw(9),
                          // top: getH(3),
                          // bottom: getH(3)
                      ),
                      child: Text('Share', style: kText22,)
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
