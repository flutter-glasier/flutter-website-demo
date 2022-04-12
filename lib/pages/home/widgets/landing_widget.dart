import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/helpers/reponsiveness.dart';
import 'package:flutter_web_dashboard/helpers/theme_helper.dart';
import 'package:flutter_web_dashboard/pages/home/widgets/carousel_slider.dart';
import 'package:flutter_web_dashboard/pages/home/widgets/get_in.dart';

class LandingWidgets extends StatelessWidget {
  const LandingWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      height: ResponsiveWidget.isLargeScreen(context) ? 760 : double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                  style: appTheme!.text60BoldBlack,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In est tortor, ornare a pellentesque ac, faucibus nec tellus. Mauris a purus sodales, viverra lectus vitae, bibendum urna. Donec lectus dui, posuere et dignissim eu.',
                  style: appTheme!.text16SemiGrey,
                ),
                SizedBox(
                  height: 20,
                ),
                GetInTouch()
              ],
            ),
          ),
          Expanded(flex: 2, child: CarouselWithIndicatorDemo())
        ],
      ),
    );
  }
}
