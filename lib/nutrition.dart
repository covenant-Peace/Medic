// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medic/constants.dart';

class Nutrition extends StatelessWidget {
  const Nutrition({Key? key}) : super(key: key);

  // const Fitness({Key? key}) : super(key: key);

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
                  'Nutrition',
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
            padding: EdgeInsets.only(
                top: getH(84), left: getw(25), right: getw(25)),
            child: ListView(
              children: [
                Container(
                  // width: getw(268),
                  decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                            color: Color(0xff3376b5),
                            width: 1,
                            style: BorderStyle.solid),
                        bottom: BorderSide(
                            color: Color(0xff3376b5),
                            width: 1,
                            style: BorderStyle.solid),
                        left: BorderSide(
                            color: Color(0xff3376b5),
                            width: 1,
                            style: BorderStyle.solid),
                        right: BorderSide(
                            color: Color(0xff3376b5),
                            width: 1,
                            style: BorderStyle.solid),
                      ),
                      color: Color(0xffc0e8f9),
                      borderRadius: BorderRadius.circular(5)),
                  padding: EdgeInsets.all(5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '●  ',
                            style: TextStyle(color: Color(0xff392cfe)),
                          ),
                          Text(
                            ' Good meals you want to try out',
                            style: kText7,
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: getw(18)),
                        child: Text(
                          'Amala a yoruba man’s food  jjjjjjjjjjjjjjjjjjjjjdhbj sghetsk jbwjwgtnbsk hsghdj gbhsm',
                          style: kText11,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: getH(27),
                ),
                Container(
                  // width: getw(268),
                  decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                            color: Color(0xff3376b5),
                            width: 1,
                            style: BorderStyle.solid),
                        bottom: BorderSide(
                            color: Color(0xff3376b5),
                            width: 1,
                            style: BorderStyle.solid),
                        left: BorderSide(
                            color: Color(0xff3376b5),
                            width: 1,
                            style: BorderStyle.solid),
                        right: BorderSide(
                            color: Color(0xff3376b5),
                            width: 1,
                            style: BorderStyle.solid),
                      ),
                      color: Color(0xffc0e8f9),
                      borderRadius: BorderRadius.circular(5)),
                  padding: EdgeInsets.all(5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '●  ',
                            style: TextStyle(color: Color(0xff392cfe)),
                          ),
                          Text(
                            ' Good meals you want to try out',
                            style: kText7,
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: getw(18)),
                        child: Text(
                          'Amala a yoruba man’s food  jjjjjjjjjjjjjjjjjjjjjdhbj sghetsk jbwjwgtnbsk hsghdj gbhsm',
                          style: kText11,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: getH(27),
                ),
                Container(
                  // width: getw(268),
                  decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                            color: Color(0xff3376b5),
                            width: 1,
                            style: BorderStyle.solid),
                        bottom: BorderSide(
                            color: Color(0xff3376b5),
                            width: 1,
                            style: BorderStyle.solid),
                        left: BorderSide(
                            color: Color(0xff3376b5),
                            width: 1,
                            style: BorderStyle.solid),
                        right: BorderSide(
                            color: Color(0xff3376b5),
                            width: 1,
                            style: BorderStyle.solid),
                      ),
                      color: Color(0xffc0e8f9),
                      borderRadius: BorderRadius.circular(5)),
                  padding: EdgeInsets.all(5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '●  ',
                            style: TextStyle(color: Color(0xff392cfe)),
                          ),
                          Text(
                            ' Good meals you want to try out',
                            style: kText7,
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: getw(18)),
                        child: Text(
                          'Amala a yoruba man’s food  jjjjjjjjjjjjjjjjjjjjjdhbj sghetsk jbwjwgtnbsk hsghdj gbhsm',
                          style: kText11,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: getH(27),
                ),
                Container(
                  // width: getw(268),
                  decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                            color: Color(0xff3376b5),
                            width: 1,
                            style: BorderStyle.solid),
                        bottom: BorderSide(
                            color: Color(0xff3376b5),
                            width: 1,
                            style: BorderStyle.solid),
                        left: BorderSide(
                            color: Color(0xff3376b5),
                            width: 1,
                            style: BorderStyle.solid),
                        right: BorderSide(
                            color: Color(0xff3376b5),
                            width: 1,
                            style: BorderStyle.solid),
                      ),
                      color: Color(0xffc0e8f9),
                      borderRadius: BorderRadius.circular(5)),
                  padding: EdgeInsets.all(5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '●  ',
                            style: TextStyle(color: Color(0xff392cfe)),
                          ),
                          Text(
                            ' Good meals you want to try out',
                            style: kText7,
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: getw(18)),
                        child: Text(
                          'Amala a yoruba man’s food  jjjjjjjjjjjjjjjjjjjjjdhbj sghetsk jbwjwgtnbsk hsghdj gbhsm',
                          style: kText11,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: getH(27),
                ),
                Container(
                  // width: getw(268),
                  decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                            color: Color(0xff3376b5),
                            width: 1,
                            style: BorderStyle.solid),
                        bottom: BorderSide(
                            color: Color(0xff3376b5),
                            width: 1,
                            style: BorderStyle.solid),
                        left: BorderSide(
                            color: Color(0xff3376b5),
                            width: 1,
                            style: BorderStyle.solid),
                        right: BorderSide(
                            color: Color(0xff3376b5),
                            width: 1,
                            style: BorderStyle.solid),
                      ),
                      color: Color(0xffc0e8f9),
                      borderRadius: BorderRadius.circular(5)),
                  padding: EdgeInsets.all(5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '●  ',
                            style: TextStyle(color: Color(0xff392cfe)),
                          ),
                          Text(
                            ' Good meals you want to try out',
                            style: kText7,
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: getw(18)),
                        child: Text(
                          'Amala a yoruba man’s food  jjjjjjjjjjjjjjjjjjjjjdhbj sghetsk jbwjwgtnbsk hsghdj gbhsm',
                          style: kText11,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: getH(27),
                ),
                Container(
                  // width: getw(268),
                  decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                            color: Color(0xff3376b5),
                            width: 1,
                            style: BorderStyle.solid),
                        bottom: BorderSide(
                            color: Color(0xff3376b5),
                            width: 1,
                            style: BorderStyle.solid),
                        left: BorderSide(
                            color: Color(0xff3376b5),
                            width: 1,
                            style: BorderStyle.solid),
                        right: BorderSide(
                            color: Color(0xff3376b5),
                            width: 1,
                            style: BorderStyle.solid),
                      ),
                      color: Color(0xffc0e8f9),
                      borderRadius: BorderRadius.circular(5)),
                  padding: EdgeInsets.all(5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '●  ',
                            style: TextStyle(color: Color(0xff392cfe)),
                          ),
                          Text(
                            ' Good meals you want to try out',
                            style: kText7,
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: getw(18)),
                        child: Text(
                          'Amala a yoruba man’s food  jjjjjjjjjjjjjjjjjjjjjdhbj sghetsk jbwjwgtnbsk hsghdj gbhsm',
                          style: kText11,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: getH(27),
                ),
                Container(
                  // width: getw(268),
                  decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                            color: Color(0xff3376b5),
                            width: 1,
                            style: BorderStyle.solid),
                        bottom: BorderSide(
                            color: Color(0xff3376b5),
                            width: 1,
                            style: BorderStyle.solid),
                        left: BorderSide(
                            color: Color(0xff3376b5),
                            width: 1,
                            style: BorderStyle.solid),
                        right: BorderSide(
                            color: Color(0xff3376b5),
                            width: 1,
                            style: BorderStyle.solid),
                      ),
                      color: Color(0xffc0e8f9),
                      borderRadius: BorderRadius.circular(5)),
                  padding: EdgeInsets.all(5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '●  ',
                            style: TextStyle(color: Color(0xff392cfe)),
                          ),
                          Text(
                            ' Good meals you want to try out',
                            style: kText7,
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: getw(18)),
                        child: Text(
                          'Amala a yoruba man’s food  jjjjjjjjjjjjjjjjjjjjjdhbj sghetsk jbwjwgtnbsk hsghdj gbhsm',
                          style: kText11,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: getH(27),
                ),
                Container(
                  // width: getw(268),
                  decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                            color: Color(0xff3376b5),
                            width: 1,
                            style: BorderStyle.solid),
                        bottom: BorderSide(
                            color: Color(0xff3376b5),
                            width: 1,
                            style: BorderStyle.solid),
                        left: BorderSide(
                            color: Color(0xff3376b5),
                            width: 1,
                            style: BorderStyle.solid),
                        right: BorderSide(
                            color: Color(0xff3376b5),
                            width: 1,
                            style: BorderStyle.solid),
                      ),
                      color: Color(0xffc0e8f9),
                      borderRadius: BorderRadius.circular(5)),
                  padding: EdgeInsets.all(5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '●  ',
                            style: TextStyle(color: Color(0xff392cfe)),
                          ),
                          Text(
                            ' Good meals you want to try out',
                            style: kText7,
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: getw(18)),
                        child: Text(
                          'Amala a yoruba man’s food  jjjjjjjjjjjjjjjjjjjjjdhbj sghetsk jbwjwgtnbsk hsghdj gbhsm',
                          style: kText11,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: getH(27),
                ),
                Container(
                  // width: getw(268),
                  decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                            color: Color(0xff3376b5),
                            width: 1,
                            style: BorderStyle.solid),
                        bottom: BorderSide(
                            color: Color(0xff3376b5),
                            width: 1,
                            style: BorderStyle.solid),
                        left: BorderSide(
                            color: Color(0xff3376b5),
                            width: 1,
                            style: BorderStyle.solid),
                        right: BorderSide(
                            color: Color(0xff3376b5),
                            width: 1,
                            style: BorderStyle.solid),
                      ),
                      color: Color(0xffc0e8f9),
                      borderRadius: BorderRadius.circular(5)),
                  padding: EdgeInsets.all(5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '●  ',
                            style: TextStyle(color: Color(0xff392cfe)),
                          ),
                          Text(
                            ' Good meals you want to try out',
                            style: kText7,
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: getw(18)),
                        child: Text(
                          'Amala a yoruba man’s food  jjjjjjjjjjjjjjjjjjjjjdhbj sghetsk jbwjwgtnbsk hsghdj gbhsm',
                          style: kText11,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: getH(27),
                ),
                Container(
                  // width: getw(268),
                  decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                            color: Color(0xff3376b5),
                            width: 1,
                            style: BorderStyle.solid),
                        bottom: BorderSide(
                            color: Color(0xff3376b5),
                            width: 1,
                            style: BorderStyle.solid),
                        left: BorderSide(
                            color: Color(0xff3376b5),
                            width: 1,
                            style: BorderStyle.solid),
                        right: BorderSide(
                            color: Color(0xff3376b5),
                            width: 1,
                            style: BorderStyle.solid),
                      ),
                      color: Color(0xffc0e8f9),
                      borderRadius: BorderRadius.circular(5)),
                  padding: EdgeInsets.all(5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '●  ',
                            style: TextStyle(color: Color(0xff392cfe)),
                          ),
                          Text(
                            ' Good meals you want to try out',
                            style: kText7,
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: getw(18)),
                        child: Text(
                          'Amala a yoruba man’s food  jjjjjjjjjjjjjjjjjjjjjdhbj sghetsk jbwjwgtnbsk hsghdj gbhsm',
                          style: kText11,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: getH(27),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
