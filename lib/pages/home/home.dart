import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/helpers/theme_helper.dart';
import 'package:flutter_web_dashboard/pages/home/widgets/footer.dart';
import 'package:flutter_web_dashboard/pages/home/widgets/how_it_works.dart';
import 'package:flutter_web_dashboard/pages/home/widgets/landing_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // minimum: EdgeInsets.symmetric(vertical: 30, horizontal: 50),
      child: Container(
        // padding: EdgeInsets.symmetric(horizontal: 20),
        color: appTheme!.whiteColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              LandingWidgets(),
              HowItWorks(),
              Footer()
              // LandingWidgets(),
            ],
          ),
        ),
      ),
    );
  }
}
