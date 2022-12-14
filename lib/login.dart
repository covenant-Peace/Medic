// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medic/navigation_bar.dart';
import 'package:medic/signup.dart';

import 'constants.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
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
          ListView(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: getH(150.24),
                ),
                child: SvgPicture.asset('images/medic.svg'),
              ),
              SizedBox(
                height: getH(18.2),
              ),
              Center(
                child: Text(
                  'Welcome back',
                  style: kText1,
                ),
              ),
              // SizedBox(
              //   height: getH(44),
              // ),
              Container(
                height: getH(50),
                margin: EdgeInsets.only(
                    left: getw(25), right: getw(27), top: getH(44)),
                decoration: BoxDecoration(
                    color: Colors.grey.shade50,
                    borderRadius: BorderRadius.circular(100)),
                child: ListTile(
                  title: TextField(
                    decoration: InputDecoration(
                        hintText: 'Enter User name or ID',
                        hintStyle: kText4,
                        border: InputBorder.none),
                  ),
                ),
              ),
              Container(
                height: getH(50),
                margin: EdgeInsets.only(
                    left: getw(25), right: getw(27), top: getH(26)),
                decoration: BoxDecoration(
                    color: Colors.grey.shade50,
                    borderRadius: BorderRadius.circular(100)),
                child: ListTile(
                  title: TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter password',
                      hintStyle: kText4,
                      border: InputBorder.none,
                    ),
                    obscureText: true,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Navigation(0)));
                },
                child: Container(
                  margin: EdgeInsets.only(
                      left: getw(25), right: getw(27), top: getH(45)),
                  width: MediaQuery.of(context).size.width,
                  height: getH(60),
                  decoration: BoxDecoration(color: Color(0xff392cfe)),
                  child: Center(
                    child: Text(
                      'Login',
                      style: kText,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: getH(11),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account? ',
                    style: kText3,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => SignUp()));
                    },
                    child: Text(
                      'Sign up',
                      style: kText2,
                    ),
                  )
                ],
              )
            ],
          ),
          SvgPicture.asset('images/circle.svg'),
        ],
      ),
    );
  }
}
