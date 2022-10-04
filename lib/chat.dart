// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medic/constants.dart';
import 'package:medic/physician.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  final messageTextController = TextEditingController();
  String messageText = '';

  List<Widget> messageBubbles = [];

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
          SvgPicture.asset('images/semi.svg'),
          Padding(
            padding: EdgeInsets.only(top: getH(50)),
            child: Column(
              children: [
                Text(
                  'Chat',
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
                Container(
                  // width: getw(268),
                  decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                            color: Color(0xff59b44b),
                            width: 1,
                            style: BorderStyle.solid),
                        bottom: BorderSide(
                            color: Color(0xff59b44b),
                            width: 1,
                            style: BorderStyle.solid),
                        left: BorderSide(
                            color: Color(0xff59b44b),
                            width: 1,
                            style: BorderStyle.solid),
                        right: BorderSide(
                            color: Color(0xff59b44b),
                            width: 1,
                            style: BorderStyle.solid),
                      ),
                      color: Color(0xffdefbd9),
                      borderRadius: BorderRadius.circular(5)),
                  padding: EdgeInsets.only(
                      left: getw(35), top: getH(9.5), bottom: getH(13)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: getH(38),
                            width: getw(38),
                            decoration: BoxDecoration(
                              color: Color(0xffc0e8f9),
                              borderRadius: BorderRadius.circular(5),
                              border: Border(
                                top: BorderSide(
                                    color: Color(0xff3376b5),
                                    width: 1,
                                    style: BorderStyle.solid),
                                bottom: BorderSide(
                                    color: Color(0xff3376b5),
                                    width: 1,
                                    style: BorderStyle.solid),
                                left: BorderSide(
                                    color: Color(0xff3376b5),
                                    width: 1,
                                    style: BorderStyle.solid),
                                right: BorderSide(
                                    color: Color(0xff3376b5),
                                    width: 1,
                                    style: BorderStyle.solid),
                              ),
                            ),
                            child: SvgPicture.asset('images/pipa.svg'),
                          ),
                          SizedBox(
                            width: getw(5),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                name,
                                style: kText7,
                              ),
                              Text(
                                'Tooth Dentist',
                                style: kText11,
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: getH(200),
                left: getw(25),
                right: getw(24),
                bottom: getH(37)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                // MessagesStream(),
                Expanded(
                  child: ListView(
                    reverse: false,
                    children: messageBubbles,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: getw(270),
                      // flex: 2,
                      decoration: BoxDecoration(
                          color: Color(0xffd9d9d9),
                          borderRadius: BorderRadius.circular(20)),
                      // flex: 2,
                      child: TextField(
                        controller: messageTextController,
                        onChanged: (value) {
                          messageText = value;
                        },
                        decoration: kMessageTextFieldDecoration,
                      ),
                    ),
                    SizedBox(
                      width: getw(6),
                    ),
                    GestureDetector(
                        onTap: () {
                          messageTextController.clear();
                          setState(() {
                            messageBubbles.add(UnconstrainedBox(
                              child: Container(
                                // width: double.infinity,
                                width: getw(240),
                                padding: EdgeInsets.all(getH(8)),
                                alignment: Alignment.centerRight,
                                margin: EdgeInsets.only(bottom: getH(5)),
                                decoration: BoxDecoration(
                                    color: Color(0xffc7daf5),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30.0),
                                        bottomLeft: Radius.circular(30.0),
                                        bottomRight: Radius.circular(30.0))),
                                child: Text(
                                  messageText,
                                  style: kText23,
                                ),
                              ),
                            ));
                          });
                          // final date = DateTime.now();
                          // final time = "${date.hour}:${date.minute}";
                          // messageTextController.clear();
                          // _firestore.collection('messages').add(
                          //   {
                          //     'text': messageText,
                          //     'sender': loggedInUser.email,
                          //     'date': date,
                          //     'time': time
                          //   },
                          // );
                          // setState(() {
                          //   messageText = '';
                          // });
                        },
                        child: CircleAvatar(
                          backgroundColor: Color(0xff392cfe),
                          child: Icon(
                            Icons.send,
                            color: Colors.white,
                          ),
                        )),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
