// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medic/login.dart';

import 'constants.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                child: SvgPicture.asset('images/medic2.svg'),
              ),
              SizedBox(
                height: getH(18.2),
              ),
              Center(
                child: Text(
                  'Welcome on board',
                  style: kText1,
                ),
              ),
              SizedBox(
                height: getH(10),
              ),
              Center(
                child: Text(
                  'lets  get your profile set up...',
                  style: kText3,
                ),
              ),
              // SizedBox(
              //   height: getH(44),
              // ),
              Container(
                margin: EdgeInsets.only(
                    left: getw(25), right: getw(27), top: getH(44)),
                decoration: BoxDecoration(
                    color: Colors.grey.shade50,
                    borderRadius: BorderRadius.circular(100)),
                child: ListTile(
                  title: TextField(
                    decoration: InputDecoration(
                        hintText: 'Enter your name',
                        hintStyle: kText4,
                        border: InputBorder.none),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: getw(25), right: getw(27), top: getH(19)),
                decoration: BoxDecoration(
                    color: Colors.grey.shade50,
                    borderRadius: BorderRadius.circular(100)),
                child: ListTile(
                  title: TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter your email',
                      hintStyle: kText4,
                      border: InputBorder.none,
                    ),
                    keyboardType: TextInputType.emailAddress,
                    // obscureText: true,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: getw(25), right: getw(27), top: getH(19)),
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
                    keyboardType: TextInputType.visiblePassword,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: getw(25), right: getw(27), top: getH(19)),
                decoration: BoxDecoration(
                    color: Colors.grey.shade50,
                    borderRadius: BorderRadius.circular(100)),
                child: ListTile(
                  title: TextField(
                    decoration: InputDecoration(
                      hintText: 'Confirm password',
                      hintStyle: kText4,
                      border: InputBorder.none,
                    ),
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Welcome()));
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
                    'Already have an account? ',
                    style: kText3,
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Welcome()));
                    },
                    child: Text(
                      'Sign in',
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
