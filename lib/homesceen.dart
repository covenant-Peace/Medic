// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medic/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
          SvgPicture.asset('images/circle.svg'),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: getH(325),
                child: Stack(
                  children: [
                    Positioned(
                        top: getH(91),
                        left: getw(25),
                        child: SvgPicture.asset('images/med.svg')),
                  ],
                ),
              ),
              SizedBox(
                height: getH(29),
              ),
              Padding(
                padding: EdgeInsets.only(left: getw(25)),
                child: Text(
                  'What are you doing today?',
                  style: kText5,
                ),
              ),
              SizedBox(
                height: getH(10),
              )
            ],
          ),
        ],
      ),
    );
  }
}
