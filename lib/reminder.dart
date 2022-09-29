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
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: getw(40),
                      child: Transform.translate(
                        offset: Offset(-20, 0),
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
                      child: Transform.translate(
                        offset: Offset(-50, 0),
                        child: CheckboxListTile(
                          value: _value,
                          onChanged: (bool? value) {
                            setState(() {
                              _value = value!;
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
                    ),
                    Expanded(
                      child: Transform.translate(
                        offset: Offset(-20, 0),
                        child: CheckboxListTile(
                          value: _value,
                          onChanged: (bool? value) {
                            setState(() {
                              _value = value!;
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
                    ),
                  ],
                ),
                Expanded(
                  child: CheckboxListTile(
                    value: _value,
                    onChanged: (bool? value) {
                      setState(() {
                        _value = value!;
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
