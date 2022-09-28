import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GetStarted extends StatelessWidget {
  // const GetSyarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double getH(double height){
      return (height/812)*MediaQuery.of(context).size.height;
    }
    double getw(double width){
      return (width/375)*MediaQuery.of(context).size.width;
    }
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: getH(150.24), left: getw(146.54)),
                child: SvgPicture.asset('images/medic.svg'),
              )

            ],
          ),
          SvgPicture.asset('images/circle.svg')
        ],
      ),
    );
  }
}

