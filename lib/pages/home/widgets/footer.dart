import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/helpers/theme_helper.dart';

import '../../../constants/style.dart';
import '../../../widgets/custom_text.dart';

class Footer extends StatelessWidget {
  final TextEditingController _requestDemoController = TextEditingController();
  final FocusNode _focusRequest = FocusNode();
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      height: _width / 8,
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: "Enquiry",
                  size: 20,
                  weight: FontWeight.bold,
                  color: appTheme!.whiteColor,
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  width: 200,
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In est tortor, ornare a pellentesque ac, faucibus nec tellus. Mauris a purus sodales, viverra lectus vitae, bibendum urna. Donec lectus dui, posuere et dignissim eu.',
                    style: appTheme!.text12SemiBoldWhite,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: _width / 20),
          Container(
            height: _width / 9 - 50,
            child: VerticalDivider(
              color: appTheme!.whiteColor,
              thickness: 5,
              width: 50,
            ),
          ),
          company(),
          Container(
            height: _width / 9 - 50,
            child: VerticalDivider(
              color: appTheme!.whiteColor,
              thickness: 5,
              width: 50,
            ),
          ),
          requestDemoTextField()
        ],
      );

  Widget requestDemoTextField() => Expanded(
        flex: 1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Request demo',
              style: appTheme!.text30SemiBoldWhite,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 300,
              child: TextFormField(
                style: appTheme!.text12SemiBoldWhite,
                controller: _requestDemoController,
                focusNode: _focusRequest,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor: appTheme!.colorPrimary,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.chevron_right_rounded)),
                      ),
                    ),
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: appTheme!.whiteColor)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: appTheme!.whiteColor)),
                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: appTheme!.whiteColor)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: appTheme!.whiteColor))),
              ),
            ),
          ],
        ),
      );

  Widget company() => Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Company',
              style: appTheme!.text14SemiBoldWhite,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'About us',
              style: appTheme!.text12SemiBoldWhite,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Career',
              style: appTheme!.text12SemiBoldWhite,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Leadership',
              style: appTheme!.text12SemiBoldWhite,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Partners',
              style: appTheme!.text12SemiBoldWhite,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Contact us',
              style: appTheme!.text12SemiBoldWhite,
            ),
          ],
        ),
      );
}
