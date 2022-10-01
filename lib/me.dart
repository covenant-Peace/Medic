// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medic/constants.dart';
import 'package:medic/profile.dart';

class Me extends StatelessWidget {
  const Me({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double getH(double height) {
      return (height / 812) * MediaQuery.of(context).size.height;
    }

    double getw(double width) {
      return (width / 375) * MediaQuery.of(context).size.width;
    }

    return Stack(
      children: [
        SvgPicture.asset('images/semi.svg'),
        Padding(
          padding: EdgeInsets.only(top: getH(50)),
          child: Column(
            children: [
              Text(
                'Me',
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
              EdgeInsets.only(top: getH(101), left: getw(25), right: getw(25)),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Profile()));
                },
                child: Container(
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
                      left: getw(13),
                      right: getw(29),
                      top: getH(10),
                      bottom: getH(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 27,
                        backgroundColor: Color(0xffd9d9d9),
                        child: SvgPicture.asset('images/people.svg'),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Mutiu, Victor Ariyo',
                            style: kText3,
                          ),
                          Text(
                            'Profile',
                            style: kText17,
                          )
                        ],
                      ),
                      SizedBox(
                        width: getw(13),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xff392cfe),
                        size: 20,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: getH(16),),
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
                    left: getw(13),
                    right: getw(29),
                    top: getH(10),
                    bottom: getH(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 27,
                      backgroundColor: Color(0xffd9d9d9),
                      child: SvgPicture.asset('images/medi.svg'),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Medications',
                          style: kText3,
                        ),
                        Text(
                          'View your medications',
                          style: kText17,
                        )
                      ],
                    ),
                    SizedBox(
                      width: getw(13),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xff392cfe),
                      size: 20,
                    )
                  ],
                ),
              ),
              SizedBox(height: getH(16),),
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
                    left: getw(13),
                    right: getw(29),
                    top: getH(10),
                    bottom: getH(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 27,
                      backgroundColor: Color(0xffd9d9d9),
                      child: SvgPicture.asset('images/test.svg'),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Test Reports',
                          style: kText3,
                        ),
                        Text(
                          'Check your resent test report',
                          style: kText17,
                        )
                      ],
                    ),
                    SizedBox(
                      width: getw(13),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xff392cfe),
                      size: 20,
                    )
                  ],
                ),
              ),
              SizedBox(height: getH(16),),
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
                    left: getw(13),
                    right: getw(29),
                    top: getH(10),
                    bottom: getH(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 27,
                      backgroundColor: Color(0xffd9d9d9),
                      child: SvgPicture.asset('images/help.svg'),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Get Help',
                          style: kText3,
                        ),
                        Text(
                          'Get support or send feedback',
                          style: kText17,
                        )
                      ],
                    ),
                    SizedBox(
                      width: getw(13),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xff392cfe),
                      size: 20,
                    )
                  ],
                ),
              ),
              SizedBox(height: getH(16),),
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
                    left: getw(13),
                    right: getw(29),
                    top: getH(10),
                    bottom: getH(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 27,
                      backgroundColor: Color(0xffd9d9d9),
                      child: SvgPicture.asset('images/appoint.svg'),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'View the meetings you have',
                          style: kText3,
                        ),
                        Text(
                          'View the meetings you have',
                          style: kText17,
                        )
                      ],
                    ),
                    SizedBox(
                      width: getw(13),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xff392cfe),
                      size: 20,
                    )
                  ],
                ),
              ),
              SizedBox(height: getH(16),),
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
                    left: getw(13),
                    right: getw(29),
                    top: getH(10),
                    bottom: getH(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 27,
                      backgroundColor: Color(0xffd9d9d9),
                      child: SvgPicture.asset('images/secure.svg'),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Security',
                          style: kText3,
                        ),
                        Text(
                          'Protect yourself from intruders',
                          style: kText17,
                        )
                      ],
                    ),
                    SizedBox(
                      width: getw(13),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xff392cfe),
                      size: 20,
                    )
                  ],
                ),
              ),
              SizedBox(height: getH(16),),
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
                    left: getw(13),
                    right: getw(29),
                    top: getH(10),
                    bottom: getH(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 27,
                      backgroundColor: Color(0xffd9d9d9),
                      child: SvgPicture.asset('images/about.svg'),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'About Us',
                          style: kText3,
                        ),
                        Text(
                          'Get to know Us',
                          style: kText17,
                        )
                      ],
                    ),
                    SizedBox(
                      width: getw(13),
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
    );
  }
}
