// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medic/constants.dart';

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
          padding: EdgeInsets.only(top: getH(91), left: getw(25), right: getw(25)),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
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
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      blurRadius: 4
                    )
                  ]
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      child: SvgPicture.asset('images/people.svg'),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}


