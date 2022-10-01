// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medic/constants.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
            padding: EdgeInsets.only(top: getH(109), left: getw(25), right: getw(25)),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 63,
                  backgroundColor: Color(0xffd9d9d9),
                  child: SvgPicture.asset('images/bigpeople.svg'),
                ),
                SizedBox(
                  height: getH(20),
                ),
                Container(
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
                      left: getw(26),
                      right: getw(29),
                      top: getH(10),
                      bottom: getH(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Mutiu, Victor Ariyo',
                            style: kText3,
                          ),
                          Text(
                            'Account name',
                            style: kText17,
                          )
                        ],
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xff392cfe),
                        size: 20,
                      )
                    ],
                  ),
                ),
                SizedBox(height: getH(26),),
                Container(
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
                      left: getw(26),
                      right: getw(29),
                      top: getH(10),
                      bottom: getH(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Orishigun Kosofe Lagos, Nigeria',
                            style: kText3,
                          ),
                          Text(
                            'Address',
                            style: kText17,
                          )
                        ],
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xff392cfe),
                        size: 20,
                      )
                    ],
                  ),
                ),
                SizedBox(height: getH(26),),
                Container(
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
                      left: getw(26),
                      right: getw(29),
                      top: getH(10),
                      bottom: getH(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '+2348023456789',
                            style: kText3,
                          ),
                          Text(
                            'Phone number',
                            style: kText17,
                          )
                        ],
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xff392cfe),
                        size: 20,
                      )
                    ],
                  ),
                ),
                SizedBox(height: getH(26),),
                Container(
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
                      left: getw(26),
                      right: getw(29),
                      top: getH(10),
                      bottom: getH(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'medicmaamo@gmail.com',
                            style: kText3,
                          ),
                          Text(
                            'Email address',
                            style: kText17,
                          )
                        ],
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xff392cfe),
                        size: 20,
                      )
                    ],
                  ),
                ),
                SizedBox(height: getH(26),),
                Container(
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
                      left: getw(26),
                      right: getw(29),
                      top: getH(10),
                      bottom: getH(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Verify identity/details',
                            style: kText3,
                          ),
                          Text(
                            'Identification',
                            style: kText17,
                          )
                        ],
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xff392cfe),
                        size: 20,
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
