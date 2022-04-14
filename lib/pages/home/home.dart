import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/helpers/theme_helper.dart';
import 'package:flutter_web_dashboard/pages/home/widgets/client_listing.dart';
import 'package:flutter_web_dashboard/pages/home/widgets/consult_problem.dart';
import 'package:flutter_web_dashboard/pages/home/widgets/footer.dart';
import 'package:flutter_web_dashboard/pages/home/widgets/how_it_works.dart';
import 'package:flutter_web_dashboard/pages/home/widgets/landing_widget.dart';
import 'package:flutter_web_dashboard/pages/home/widgets/testimonials.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // minimum: EdgeInsets.symmetric(vertical: 30, horizontal: 50),
      child: Container(
        alignment: Alignment.center,
        // padding: EdgeInsets.symmetric(horizontal: 20),
        color: appTheme!.whiteColor,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: ,
            children: [
              LandingWidgets(),
              TrustedBy(),

              HowItWorks(),
              ConsultYourBusiness(),
              Testimonial(),
              // TestimonialsHeader(),
              // TestimonialsLayoutGrid(),
              Divider(),
              Footer()
              // LandingWidgets(),
            ],
          ),
        ),
      ),
    );
  }
}
