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
                Container(
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
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SvgPicture.asset('images/semi.svg')
        ],
      ),
    );
  }
}
