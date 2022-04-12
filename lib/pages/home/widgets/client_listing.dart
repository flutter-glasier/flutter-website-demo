import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/helpers/theme_helper.dart';

class TrustedBy extends StatelessWidget {
  const TrustedBy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: appTheme!.grey.withOpacity(0.1)),
      child: Row(
        children: [
          Text('Trusted by'),
          ListView(
            children: [],
          )
        ],
      ),
    );
  }
}
