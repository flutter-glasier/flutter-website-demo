import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/bubble_type.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_1.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_2.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_3.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_4.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_5.dart';

class ChatMessageListing extends StatelessWidget {
  const ChatMessageListing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          // ChatBubble(
          //   clipper: ChatBubbleClipper5(
          //     type: BubbleType.sendBubble,
          //     radius: 5,
          //   ),
          //   alignment: Alignment.topRight,
          //   margin: EdgeInsets.only(top: 20),
          //   backGroundColor: Colors.blue,
          //   child: Container(
          //     constraints: BoxConstraints(
          //       maxWidth: MediaQuery.of(context).size.width * 0.7,
          //     ),
          //     child: Text(
          //       "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
          //       style: TextStyle(color: Colors.white),
          //     ),
          //   ),
          // ),
          ChatBubble(
            clipper: ChatBubbleClipper1(
              type: BubbleType.sendBubble,
            ),
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(top: 20),
            backGroundColor: Colors.blue,
            child: Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.7,
              ),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          ChatBubble(
            clipper: ChatBubbleClipper1(type: BubbleType.receiverBubble),
            backGroundColor: Color(0xffE7E7ED),
            margin: EdgeInsets.only(top: 20),
            child: Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.7,
              ),
              child: Text(
                "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat",
                style: TextStyle(color: Colors.black),
              ),
            ),
          )
        ],
      ),
    );
  }
}
