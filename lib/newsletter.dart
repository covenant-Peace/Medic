// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medic/athlerosc.dart';
import 'package:medic/constants.dart';

class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
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
          padding:
              EdgeInsets.only(top: getH(48), left: getw(19), right: getw(19)),
          child: Column(
            children: [
              Text(
                'News Feed',
                style: kText4,
              ),
              SizedBox(
                height: getH(10),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Ath()));
                },
                child: Container(
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                        blurRadius: 10.0, color: Colors.black.withOpacity(0.3))
                  ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('images/ath.png'),
                      Padding(
                        padding: EdgeInsets.only(left: getw(12), top: getH(12)),
                        child: Text(
                          'Atherosclerosis',
                          style: kText3,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: getw(12), right: getw(12)),
                        child: Text(
                          'The leading cause of heart attacks, strokes and peripheral vascular diseases is a condition where the arteries in the body transporting oxygen, nutrients and blood harden.',
                          style: kText15,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: getw(12), bottom: getH(12)),
                        child: Text(
                          'W.H.O - 1 day ago',
                          style: kText16,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: getH(17),
              ),
              Container(
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      blurRadius: 10.0, color: Colors.black.withOpacity(0.3))
                ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('images/sto.png'),
                    Padding(
                      padding: EdgeInsets.only(left: getw(12), top: getH(12)),
                      child: Text(
                        'Stomach Cancer Symptoms: The sign on the face associated with early stomach cancer',
                        style: kText3,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: getw(12), right: getw(12)),
                      child: Text(
                        'Gastric cancer has been linked with one skin eruption, especially on the face',
                        style: kText15,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(left: getw(12), bottom: getH(12)),
                      child: Text(
                        'W.H.O - 2 days ago',
                        style: kText16,
                      ),
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
