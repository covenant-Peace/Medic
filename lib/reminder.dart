// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medic/constants.dart';

class Reminder extends StatefulWidget {
  const Reminder({Key? key}) : super(key: key);

  @override
  State<Reminder> createState() => _ReminderState();
}

class _ReminderState extends State<Reminder> {
  bool _value = false;
  bool _value1 = false;
  bool _value2 = false;
  bool _value3 = false;

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
      // appBar: AppBar(
      //   title: Text('Reminder'),
      //   centerTitle: true,
      //   backgroundColor: Colors.transparent,
      // ),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: getH(50)),
            child: Column(
              children: [
                Text(
                  'Reminder',
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
                EdgeInsets.only(top: getH(94), left: getw(25), right: getw(21)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        width: getw(20),
                        child: CheckboxListTile(
                          value: _value,
                          onChanged: (bool? value) {
                            setState(() {
                              _value = value!;
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
                        onChanged: (bool? value) {
                          setState(() {
                            _value1 = value!;
                          });
                        },
                        title: Text(
                          'Medications',
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
                          });
                        },
                        title: Text(
                          'Appointments',
                          style: kText9,
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
                CheckboxListTile(
                  value: _value3,
                  onChanged: (bool? value) {
                    setState(() {
                      _value3 = value!;
                    });
                  },
                  title: Text(
                    'Fitness',
                    style: kText6,
                  ),
                  checkColor: Colors.black,
                  activeColor: Colors.white,
                  side: BorderSide(color: Colors.black),
                  contentPadding: EdgeInsets.all(0),
                  controlAffinity: ListTileControlAffinity.leading,
                  // tristate: true,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: getw(268),
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'IBUCAB',
                                style: kText10,
                              ),
                              Icon(
                                Icons.notifications,
                                color: Color(0xffe84c3c),
                                size: 14,
                              )
                            ],
                          ),
                          SizedBox(
                            height: getH(5),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  SvgPicture.asset('images/1.svg'),
                                  SizedBox(
                                    height: getH(5),
                                  ),
                                  Text(
                                    '07 : 00am ',
                                    style: kText11,
                                  ),
                                  SizedBox(
                                    height: getH(2),
                                  ),
                                  Text('2 morning', style: kText11)
                                ],
                              ),
                              Column(
                                children: [
                                  SvgPicture.asset('images/2.svg'),
                                  SizedBox(
                                    height: getH(5),
                                  ),
                                  Text('02 : 00pm ', style: kText11),
                                  SizedBox(
                                    height: getH(2),
                                  ),
                                  Text('2 afternoon', style: kText11)
                                ],
                              ),
                              Column(
                                children: [
                                  SvgPicture.asset('images/3.svg'),
                                  SizedBox(
                                    height: getH(5),
                                  ),
                                  Text('07 : 00pm ', style: kText11),
                                  SizedBox(
                                    height: getH(2),
                                  ),
                                  Text('2 night', style: kText11)
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SvgPicture.asset('images/close.svg'),
                    SvgPicture.asset('images/edit.svg'),
                  ],
                ),
                SizedBox(
                  height: getH(24),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: getw(268),
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'JOGGING',
                                style: kText6,
                              ),
                              Icon(
                                Icons.notifications,
                                color: Color(0xffe84c3c),
                                size: 14,
                              )
                            ],
                          ),
                          SizedBox(
                            height: getH(5),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text('7 pm', style: kText11,),
                                  SizedBox(
                                    height: getH(5),
                                  ),
                                  Text(
                                    'Mon',
                                    style: kText11,
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text('7 pm', style: kText14,),
                                  SizedBox(
                                    height: getH(5),
                                  ),
                                  Text(
                                    'Tue',
                                    style: kText14,
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text('7 am', style: kText11,),
                                  SizedBox(
                                    height: getH(5),
                                  ),
                                  Text(
                                    'Wed',
                                    style: kText11,
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text('7 am', style: kText14,),
                                  SizedBox(
                                    height: getH(5),
                                  ),
                                  Text(
                                    'Thur',
                                    style: kText14,
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text('7 am', style: kText11,),
                                  SizedBox(
                                    height: getH(5),
                                  ),
                                  Text(
                                    'Fri',
                                    style: kText11,
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text('7 am', style: kText14,),
                                  SizedBox(
                                    height: getH(5),
                                  ),
                                  Text(
                                    'Sat',
                                    style: kText14,
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text('7 am', style: kText11,),
                                  SizedBox(
                                    height: getH(5),
                                  ),
                                  Text(
                                    'Sun',
                                    style: kText11,
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SvgPicture.asset('images/close.svg'),
                    SvgPicture.asset('images/edit.svg'),
                  ],
                ),
                SizedBox(
                  height: getH(24),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: getw(268),
                      decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(
                                color: Color(0xffe3a37f),
                                width: 1,
                                style: BorderStyle.solid),
                            bottom: BorderSide(
                                color: Color(0xffe3a37f),
                                width: 1,
                                style: BorderStyle.solid),
                            left: BorderSide(
                                color: Color(0xffe3a37f),
                                width: 1,
                                style: BorderStyle.solid),
                            right: BorderSide(
                                color: Color(0xffe3a37f),
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Meet Dr. Amsat',
                                style: kText13,
                              ),
                              Icon(
                                Icons.notifications,
                                color: Color(0xffe84c3c),
                                size: 14,
                              )
                            ],
                          ),
                          SizedBox(
                            height: getH(2),
                          ),
                          Text(
                            '3, love all street, Ketu Lagos.',
                            style: kText11,
                          ),
                          SizedBox(
                            height: getH(5),
                          ),
                          Text(
                            '2 : 00pm',
                            style: kText11,
                          )
                        ],
                      ),
                    ),
                    SvgPicture.asset('images/close.svg'),
                    SvgPicture.asset('images/edit.svg'),
                  ],
                ),
                SizedBox(
                  height: getH(24),
                ),
              ],
            ),
          ),
          SvgPicture.asset('images/semi.svg')
        ],
      ),
    );
  }
}
