// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medic/constants.dart';

class Tips extends StatefulWidget {
  const Tips({Key? key}) : super(key: key);

  @override
  State<Tips> createState() => _TipsState();
}

class _TipsState extends State<Tips> {
  bool _value = false;
  bool _value1 = false;
  bool _value2 = false;
  bool _value3 = false;
  bool _value4 = false;

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
            padding: EdgeInsets.only(top: getH(50), left: getw(20)),
            child: Column(
              children: [
                Text(
                  'Tips/Facts',
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
                SizedBox(
                  height: getH(15),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        width: getw(20),
                        child: CheckboxListTile(
                          value: _value,
                          dense: true,
                          onChanged: (bool? value) {
                            setState(() {
                              _value = value!;
                              _value1 = false;
                              _value2 = false;
                              _value3 = false;
                              _value4 = false;
                            });
                          },
                          title: Text(
                            'All',
                            style: kText7,
                          ),
                          checkColor: Colors.black,
                          activeColor: Colors.white,
                          contentPadding: EdgeInsets.all(0),
                          side: BorderSide(color: Colors.black),
                          controlAffinity: ListTileControlAffinity.leading,
                          // tristate: true,
                        ),
                      ),
                    ),
                    Expanded(
                      child: CheckboxListTile(
                        value: _value1,
                        dense: true,
                        onChanged: (bool? value) {
                          setState(() {
                            _value1 = value!;
                            _value = false;
                            _value2 = false;
                            _value3 = false;
                            _value4 = false;
                          });
                        },
                        title: Text(
                          'Nutrition',
                          style: kText8,
                          // maxLines: 1,
                        ),
                        checkColor: Colors.black,
                        activeColor: Colors.white,
                        contentPadding: EdgeInsets.all(0),
                        side: BorderSide(color: Colors.black),
                        controlAffinity: ListTileControlAffinity.leading,
                        // tristate: true,
                      ),
                    ),
                    Expanded(
                      child: CheckboxListTile(
                        value: _value2,
                        onChanged: (bool? value) {
                          setState(() {
                            _value2 = value!;
                            _value = false;
                            _value1 = false;
                            _value3 = false;
                            _value4 = false;
                          });
                        },
                        title: Text(
                          'Fitness',
                          style: kText9,
                          // maxLines: 1,
                        ),
                        checkColor: Colors.black,
                        activeColor: Colors.white,
                        side: BorderSide(color: Colors.black),
                        dense: true,
                        contentPadding: EdgeInsets.all(0),
                        controlAffinity: ListTileControlAffinity.leading,
                        // tristate: true,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: CheckboxListTile(
                        value: _value3,
                        dense: true,
                        onChanged: (bool? value) {
                          setState(() {
                            _value3 = value!;
                            _value1 = false;
                            _value2 = false;
                            _value = false;
                            _value4 = false;
                          });
                        },
                        title: Text(
                          'Medical',
                          style: kText6,
                          // maxLines: 1,
                        ),
                        checkColor: Colors.black,
                        activeColor: Colors.white,
                        side: BorderSide(color: Colors.black),
                        contentPadding: EdgeInsets.all(0),
                        controlAffinity: ListTileControlAffinity.leading,
                        // tristate: true,
                      ),
                    ),
                    Expanded(
                      child: CheckboxListTile(
                        value: _value4,
                        dense: true,
                        onChanged: (bool? value) {
                          setState(() {
                            _value4 = value!;
                            _value1 = false;
                            _value2 = false;
                            _value3 = false;
                            _value = false;
                          });
                        },
                        title: Text(
                          'Wellness',
                          style: kText18,
                          // maxLines: 1,
                        ),
                        checkColor: Colors.black,
                        activeColor: Colors.white,
                        side: BorderSide(color: Colors.black),
                        contentPadding: EdgeInsets.all(0),
                        controlAffinity: ListTileControlAffinity.leading,
                        // tristate: true,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: getH(198), left: getw(25), right: getw(25)),
            child: ListView(
              children: [
                Container(
                  // width: getw(268),
                  decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                            color: Color(0xff59b44b),
                            width: 1,
                            style: BorderStyle.solid),
                        bottom: BorderSide(
                            color: Color(0xff59b44b),
                            width: 1,
                            style: BorderStyle.solid),
                        left: BorderSide(
                            color: Color(0xff59b44b),
                            width: 1,
                            style: BorderStyle.solid),
                        right: BorderSide(
                            color: Color(0xff59b44b),
                            width: 1,
                            style: BorderStyle.solid),
                      ),
                      color: Color(0xffdefbd9),
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
                            style: TextStyle(color: Color(0xff59b44b)),
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
                            color: Color(0xffe84c3c),
                            width: 1,
                            style: BorderStyle.solid),
                        bottom: BorderSide(
                            color: Color(0xffe84c3c),
                            width: 1,
                            style: BorderStyle.solid),
                        left: BorderSide(
                            color: Color(0xffe84c3c),
                            width: 1,
                            style: BorderStyle.solid),
                        right: BorderSide(
                            color: Color(0xffe84c3c),
                            width: 1,
                            style: BorderStyle.solid),
                      ),
                      color: Color(0xfff5e7d7),
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
                            style: TextStyle(color: Color(0xffe84c3c)),
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
                            color: Color(0xff59b44b),
                            width: 1,
                            style: BorderStyle.solid),
                        bottom: BorderSide(
                            color: Color(0xff59b44b),
                            width: 1,
                            style: BorderStyle.solid),
                        left: BorderSide(
                            color: Color(0xff59b44b),
                            width: 1,
                            style: BorderStyle.solid),
                        right: BorderSide(
                            color: Color(0xff59b44b),
                            width: 1,
                            style: BorderStyle.solid),
                      ),
                      color: Color(0xffdefbd9),
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
                            style: TextStyle(color: Color(0xff59b44b)),
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
                            color: Color(0xffe84c3c),
                            width: 1,
                            style: BorderStyle.solid),
                        bottom: BorderSide(
                            color: Color(0xffe84c3c),
                            width: 1,
                            style: BorderStyle.solid),
                        left: BorderSide(
                            color: Color(0xffe84c3c),
                            width: 1,
                            style: BorderStyle.solid),
                        right: BorderSide(
                            color: Color(0xffe84c3c),
                            width: 1,
                            style: BorderStyle.solid),
                      ),
                      color: Color(0xfff5e7d7),
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
                            style: TextStyle(color: Color(0xffe84c3c)),
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
                            color: Color(0xff59b44b),
                            width: 1,
                            style: BorderStyle.solid),
                        bottom: BorderSide(
                            color: Color(0xff59b44b),
                            width: 1,
                            style: BorderStyle.solid),
                        left: BorderSide(
                            color: Color(0xff59b44b),
                            width: 1,
                            style: BorderStyle.solid),
                        right: BorderSide(
                            color: Color(0xff59b44b),
                            width: 1,
                            style: BorderStyle.solid),
                      ),
                      color: Color(0xffdefbd9),
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
                            style: TextStyle(color: Color(0xff59b44b)),
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
                            color: Color(0xffe84c3c),
                            width: 1,
                            style: BorderStyle.solid),
                        bottom: BorderSide(
                            color: Color(0xffe84c3c),
                            width: 1,
                            style: BorderStyle.solid),
                        left: BorderSide(
                            color: Color(0xffe84c3c),
                            width: 1,
                            style: BorderStyle.solid),
                        right: BorderSide(
                            color: Color(0xffe84c3c),
                            width: 1,
                            style: BorderStyle.solid),
                      ),
                      color: Color(0xfff5e7d7),
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
                            style: TextStyle(color: Color(0xffe84c3c)),
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
              ],
            ),
          )
        ],
      ),
    );
  }
}
