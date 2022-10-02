// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medic/about.dart';
import 'package:medic/constants.dart';
import 'package:medic/fitness.dart';
import 'package:medic/nutrition.dart';
import 'package:medic/physician.dart';
import 'package:medic/tips.dart';

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
              ),
              Padding(
                padding: EdgeInsets.only(left: getw(37), right: getw(33)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Tips()));
                          },
                          child: Container(
                            width: getw(75),
                            height: getH(75),
                            padding: EdgeInsets.all(getw(10)),
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(217, 217, 217, 0.6),
                                borderRadius: BorderRadius.circular(20)),
                            child: SvgPicture.asset('images/tip.svg'),
                          ),
                        ),
                        Text(
                          'Medical\ntips/Facts',
                          style: kText6,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder:(context)=>Physician()));
                          },
                          child: Container(
                            width: getw(75),
                            height: getH(75),
                            padding: EdgeInsets.all(getw(10)),
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(217, 217, 217, 0.6),
                                borderRadius: BorderRadius.circular(20)),
                            child: SvgPicture.asset('images/meet.svg'),
                          ),
                        ),
                        Text('Meet a\nDoctor', style: kText6)
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: getw(75),
                          height: getH(75),
                          padding: EdgeInsets.all(getw(10)),
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(217, 217, 217, 0.6),
                              borderRadius: BorderRadius.circular(20)),
                          child: SvgPicture.asset('images/diag.svg'),
                        ),
                        Text('Maamo \nDiagnosis ', style: kText6)
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: getH(20),
              ),
              Padding(
                padding: EdgeInsets.only(left: getw(37), right: getw(33)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Fitness()));
                          },
                          child: Container(
                            width: getw(75),
                            height: getH(75),
                            padding: EdgeInsets.all(getw(10)),
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(217, 217, 217, 0.6),
                                borderRadius: BorderRadius.circular(20)),
                            child: SvgPicture.asset('images/fit.svg'),
                          ),
                        ),
                        Text('Fitness ', style: kText6)
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => About()));
                          },
                          child: Container(
                            padding: EdgeInsets.all(getw(10)),
                            height: getH(75),
                            width: getw(75),
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(217, 217, 217, 0.6),
                                borderRadius: BorderRadius.circular(20)),
                            child: SvgPicture.asset('images/hosp.svg'),
                          ),
                        ),
                        Text('Hospital \nNear Me ', style: kText6)
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Nutrition()));
                          },
                          child: Container(
                            padding: EdgeInsets.all(getw(10)),
                            height: getH(75),
                            width: getw(75),
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(217, 217, 217, 0.6),
                                borderRadius: BorderRadius.circular(20)),
                            child: SvgPicture.asset('images/nut.svg'),
                          ),
                        ),
                        Text('Nutrition ', style: kText6)
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
