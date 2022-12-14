// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medic/chat.dart';
import 'package:medic/constants.dart';

String name = '';

class Physician extends StatefulWidget {
  const Physician({Key? key}) : super(key: key);

  @override
  State<Physician> createState() => _PhysicianState();
}

class _PhysicianState extends State<Physician> {
  bool _value = false;
  bool _value1 = false;

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
                  'Meet A Physician',
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
                          });
                        },
                        title: Text(
                          'Available',
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
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: getH(140), left: getw(25), right: getw(25)),
            child: ListView(
              children: [
                GestureDetector(
                  onTap: () {
                    name = 'Dr. Amsat';
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Chat()));
                  },
                  child: Container(
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
                              '???  ',
                              style: TextStyle(color: Color(0xff59b44b)),
                            ),
                            Container(
                              height: getH(38),
                              width: getw(38),
                              decoration: BoxDecoration(
                                color: Color(0xffc0e8f9),
                                borderRadius: BorderRadius.circular(5),
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
                              ),
                              child: SvgPicture.asset('images/pipa.svg'),
                            ),
                            SizedBox(
                              width: getw(5),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Dr. Amsat',
                                  style: kText7,
                                ),
                                Text(
                                  'Tooth Dentist',
                                  style: kText11,
                                )
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: getw(18)),
                          child: Text(
                            'Location: Lagos MainLand.',
                            style: kText11,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: getH(22),
                ),
                GestureDetector(
                  onTap: () {
                    name = 'Dr. Muktai';
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Chat()));
                  },
                  child: Container(
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
                              '???  ',
                              style: TextStyle(color: Color(0xff392cfe)),
                            ),
                            Container(
                              height: getH(38),
                              width: getw(38),
                              decoration: BoxDecoration(
                                color: Color(0xffc0e8f9),
                                borderRadius: BorderRadius.circular(5),
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
                              ),
                              child: SvgPicture.asset('images/pipa.svg'),
                            ),
                            SizedBox(
                              width: getw(5),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Dr. Muktai',
                                  style: kText7,
                                ),
                                Text(
                                  'Tooth Dentist',
                                  style: kText11,
                                )
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: getw(18)),
                          child: Text(
                            'Location: Lagos MainLand.',
                            style: kText11,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: getH(22),
                ),
                GestureDetector(
                  onTap: () {
                    name = 'Dr. Temi';
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Chat()));
                  },
                  child: Container(
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
                              '???  ',
                              style: TextStyle(color: Color(0xff392cfe)),
                            ),
                            Container(
                              height: getH(38),
                              width: getw(38),
                              decoration: BoxDecoration(
                                color: Color(0xffc0e8f9),
                                borderRadius: BorderRadius.circular(5),
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
                              ),
                              child: SvgPicture.asset('images/pipa.svg'),
                            ),
                            SizedBox(
                              width: getw(5),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Dr. Temi',
                                  style: kText7,
                                ),
                                Text(
                                  'Surgeon',
                                  style: kText11,
                                )
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: getw(18)),
                          child: Text(
                            'Location: Lagos MainLand.',
                            style: kText11,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: getH(22),
                ),
                GestureDetector(
                  onTap: () {
                    name = 'Dr. Jamiu';
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Chat()));
                  },
                  child: Container(
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
                              '???  ',
                              style: TextStyle(color: Color(0xff392cfe)),
                            ),
                            Container(
                              height: getH(38),
                              width: getw(38),
                              decoration: BoxDecoration(
                                color: Color(0xffc0e8f9),
                                borderRadius: BorderRadius.circular(5),
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
                              ),
                              child: SvgPicture.asset('images/pipa.svg'),
                            ),
                            SizedBox(
                              width: getw(5),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Dr. Jamiu',
                                  style: kText7,
                                ),
                                Text(
                                  'Wellness Expert',
                                  style: kText11,
                                )
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: getw(18)),
                          child: Text(
                            'Location: Lagos MainLand.',
                            style: kText11,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: getH(22),
                ),
                GestureDetector(
                  onTap: () {
                    name = 'Dr. Aminah';
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Chat()));
                  },
                  child: Container(
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
                              '???  ',
                              style: TextStyle(color: Color(0xff392cfe)),
                            ),
                            Container(
                              height: getH(38),
                              width: getw(38),
                              decoration: BoxDecoration(
                                color: Color(0xffc0e8f9),
                                borderRadius: BorderRadius.circular(5),
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
                              ),
                              child: SvgPicture.asset('images/pipa.svg'),
                            ),
                            SizedBox(
                              width: getw(5),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Dr. Aminah',
                                  style: kText7,
                                ),
                                Text(
                                  'Psycologist',
                                  style: kText11,
                                )
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: getw(18)),
                          child: Text(
                            'Location: Lagos Ikeja.',
                            style: kText11,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: getH(16),
                ),
                Text(
                  'Didn???t see the right person to contact? see hospitals near me here',
                  style: kText14,
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
