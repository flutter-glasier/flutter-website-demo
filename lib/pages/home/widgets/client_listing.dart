import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/helpers/theme_helper.dart';

class TrustedBy extends StatelessWidget {
  const TrustedBy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 40),
      width: double.infinity,
      height: 100,
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.height / 4 + 20),
      decoration: BoxDecoration(color: appTheme!.grey.withOpacity(0.1)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              flex: 1,
              child: Text(
                'Trusted by',
                style: appTheme!.text30BoldGrey,
              )),
          Expanded(
            flex: 4,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                clientLogo('assets/icons/amazon.png'),
                clientLogo('assets/icons/google.png'),
                clientLogo('assets/icons/spotify.png'),
                clientLogo('assets/icons/facebook.png'),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget clientLogo(String name) {
    return Image.asset(name);
  }
}
