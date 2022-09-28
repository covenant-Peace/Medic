// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medic/login.dart';

import 'constants.dart';

class GetStarted extends StatelessWidget {
  // const GetSyarted({Key? key}) : super(key: key);

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
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: getH(150.24),
                ),
                child: SvgPicture.asset('images/medic.svg'),
              ),
              SizedBox(
                height: getH(18.96),
              ),
              Container(
                  height: getH(357),
                  child: Stack(children: [
                    SvgPicture.asset('images/doc.svg'),
                    Positioned(
                        top: getH(189),
                        left: getw(108),
                        child: SvgPicture.asset('images/text.svg'))
                  ])),
              GestureDetector(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Welcome()));
                },
                child: Container(
                  margin: EdgeInsets.only(left: getw(25), right: getw(27), top: getH(50)),
                  width: MediaQuery.of(context).size.width,
                  height: getH(60),
                  decoration: BoxDecoration(color: Color(0xff392cfe)),
                  child: Center(
                    child: Text(
                      'Get Started',
                      style: kText,
                    ),
                  ),
                ),
              )
            ],
          ),
          SvgPicture.asset('images/circle.svg'),
        ],
      ),
    );
  }
}
