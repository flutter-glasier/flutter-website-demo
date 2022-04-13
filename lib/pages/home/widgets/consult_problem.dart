import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/helpers/theme_helper.dart';
import 'package:lottie/lottie.dart';

class ConsultYourBusiness extends StatefulWidget {
  const ConsultYourBusiness({Key? key}) : super(key: key);

  @override
  State<ConsultYourBusiness> createState() => _ConsultYourBusinessState();
}

class _ConsultYourBusinessState extends State<ConsultYourBusiness> {
  Map<String, IconData> consultingIcon = {
    '24 Hours services with staff': Icons.history,
    'We keep your company secret': Icons.lock_outline,
    'Quick response to help you': Icons.bolt,
    'Discuss problems together': Icons.history,
  };

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / 7),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Lottie.asset('assets/animation/consulting.json'),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              titleConsult(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      consultingFeature(
                          Icons.history, "24 Hours services with staff"),
                      SizedBox(
                        width: 20,
                      ),
                      consultingFeature(
                          Icons.lock, 'We keep your company secret'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      consultingFeature(
                          Icons.bolt, "Quick response to help you"),
                      SizedBox(
                        width: 20,
                      ),
                      consultingFeature(
                          Icons.lock, 'Discuss problems together'),
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Widget titleConsult() => Container(
        margin: EdgeInsets.symmetric(vertical: 25),
        width: MediaQuery.of(context).size.width / 6,
        child: Text(
          'Consult your business problems with us',
          style: appTheme!.text35BoldBlack,
        ),
      );

  Widget consultingFeature(IconData icon, String label) => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          label == 'Quick response to help you'
              ? Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: appTheme!.colorPrimary.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(7)),
                  child: Container(
                    decoration: BoxDecoration(
                        color: appTheme!.colorPrimary.withOpacity(0.1),
                        shape: BoxShape.circle,
                        border: Border.all(color: appTheme!.colorPrimary)),
                    child: Icon(
                      icon,
                      color: appTheme!.colorPrimary,
                    ),
                  ),
                )
              : Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: appTheme!.colorPrimary.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(7)),
                  child: Icon(
                    icon,
                    color: appTheme!.colorPrimary,
                  ),
                ),
          Container(
            width: 170,
            margin: EdgeInsets.symmetric(vertical: 25),
            child: Text(
              label,
              style: appTheme!.text18BolddBlack,
            ),
          )
        ],
      );
}
