import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/helpers/theme_helper.dart';

import '../../../constants/style.dart';
import '../../../widgets/custom_text.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      height: _width / 5,
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.black),
      child: Column(
        children: [logoAndDemo(_width)],
      ),
    );
  }

  Widget logoAndDemo(double _width) => Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width: _width / 48),
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Image.asset("assets/icons/logo.png"),
          ),
          Flexible(
            child: CustomText(
              text: "Enquiry",
              size: 20,
              weight: FontWeight.bold,
              color: appTheme!.whiteColor,
            ),
          ),
          SizedBox(width: _width / 20),
          Container(
            width: 200,
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In est tortor, ornare a pellentesque ac, faucibus nec tellus. Mauris a purus sodales, viverra lectus vitae, bibendum urna. Donec lectus dui, posuere et dignissim eu.',
              style: appTheme!.text12SemiBoldWhite,
            ),
          ),
          Container(
            height: _width / 5 - 50,
            child: VerticalDivider(
              color: appTheme!.whiteColor,
              thickness: 5,
              width: 50,
            ),
          )
        ],
      );
}
