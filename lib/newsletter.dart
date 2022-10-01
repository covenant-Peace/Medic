import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('images/semi.svg'),
        Column(
          children: [

          ],
        )
      ],
    );
  }
}
