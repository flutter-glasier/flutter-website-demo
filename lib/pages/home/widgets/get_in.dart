import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/helpers/theme_helper.dart';
import 'package:flutter_web_dashboard/widgets/custom_widget.dart';

class GetInTouch extends StatelessWidget {
  GetInTouch({Key? key}) : super(key: key);
  final TextEditingController _emailController = TextEditingController();
  final FocusNode _focusEmail = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            // margin: EdgeInsets.symmetric(horizontal: 20),
            width: 200,
            height: 50,
            child: TextFormField(
              controller: _emailController,
              focusNode: _focusEmail,
              decoration: InputDecoration(
                  hintText: 'Enter a email address',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                          color: appTheme!.grey.withOpacity(0.2), width: 0.5))),
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
            flex: 1, child: CustomWidgets().getButton(() {}, 'GET IN TOUCH'))
      ],
    );
  }
}
