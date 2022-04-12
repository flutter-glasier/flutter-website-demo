import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/helpers/theme_helper.dart';

import '../../../constants/style.dart';

class HowItWorks extends StatelessWidget {
  const HowItWorks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 100,
      // width: 200,
      child: Column(
        children: [
          Text(
            'How can we help \n your business ?',
            style: appTheme!.text35BoldBlack,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit,',
            style: appTheme!.text16SemiGrey,
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              seviceCard(
                'assets/icons/search.png',
                'Find What You Need',
                'Lorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit amet',
                Color(0xFF3498DB).withOpacity(0.2),
              ),
              seviceCard(
                  'assets/icons/settings.png',
                  'Workout the details',
                  'Lorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit amet',
                  Colors.red.withOpacity(0.2)),
              seviceCard(
                  'assets/icons/rocket.png',
                  'We get to work fast',
                  'Lorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit amet',
                  Colors.yellow.withOpacity(0.2))
            ],
          ),
        ],
      ),
    );
  }

  Widget seviceCard(
          String imagePath, String label, String description, Color color) =>
      Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        height: 220,
        width: 270,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: appTheme!.grey.withOpacity(0.1)),
            color: appTheme!.whiteColor,
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 6),
                  color: lightGrey.withOpacity(.1),
                  blurRadius: 12)
            ]),
        child: Column(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: color,
              child: Image.asset(
                imagePath,
                height: 50,
                width: 50,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              label,
              style: appTheme!.text16SemiBlack,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              description,
              style: appTheme!.text12RegularGrey,
              textAlign: TextAlign.center,
            )
          ],
        ),
      );
}
