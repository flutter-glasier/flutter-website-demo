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
      padding: EdgeInsets.symmetric(
          vertical: 20, horizontal: MediaQuery.of(context).size.width / 7),
      height: _width / 6,
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.white),
      child: logoAndDemo(_width),
    );
  }

  Widget logoAndDemo(double _width) => Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Image.asset("assets/icons/logo.png"),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: "Enquiry",
                        size: 20,
                        weight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                width: 200,
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In est tortor, ornare a pellentesque ac, faucibus nec tellus. Mauris a purus sodales, viverra lectus vitae, bibendum urna. Donec lectus dui, posuere et dignissim eu.',
                  style: appTheme!.text12RegularGrey,
                ),
              ),
            ],
          ),

          company(),

          whoWeAre(), getIn()
          // requestDemoTextField()
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
              'What we do',
              style: appTheme!.text14SemiBolddBlack,
            ),
            SizedBox(
              height: 10,
            ),
            footerItemFeature('Home', () {}),
            footerItemFeature('How it works', () {}),
            footerItemFeature('Features', () {}),
            footerItemFeature('Our Programs', () {}),
            footerItemFeature('Our Partners', () {}),
            footerItemFeature('Blog', () {}),
          ],
        ),
      );

  Widget whoWeAre() => Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Who we are',
              style: appTheme!.text14SemiBolddBlack,
            ),
            SizedBox(
              height: 10,
            ),
            footerItemFeature('About us', () {}),
            footerItemFeature('Contact us', () {}),
            footerItemFeature('Careers', () {}),
            footerItemFeature('FAQ', () {}),
            footerItemFeature('Insight', () {}),
            footerItemFeature('Help', () {}),
          ],
        ),
      );

  Widget getIn() => Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Get Touch with Us',
              style: appTheme!.text14SemiBolddBlack,
            ),
            SizedBox(
              height: 10,
            ),
            footerItemFeature('Instagram', () {}),
            footerItemFeature('Facebook', () {}),
            footerItemFeature('Twitter', () {}),
            footerItemFeature('Whatsapp', () {}),
            footerItemFeature('Google', () {}),
            footerItemFeature('Gmail', () {}),
          ],
        ),
      );

  Widget footerItemFeature(String label, VoidCallback callback) => Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Text(
          label,
          style: appTheme!.text12RegularGrey,
        ),
      );
}
