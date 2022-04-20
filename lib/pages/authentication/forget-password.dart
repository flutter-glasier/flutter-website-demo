import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/controllers.dart';
import 'package:flutter_web_dashboard/helpers/theme_helper.dart';
import 'package:flutter_web_dashboard/routing/routes.dart';
import 'package:flutter_web_dashboard/widgets/custom_widget.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/string_extensions.dart';

import '../../widgets/CommonTextfield.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final FocusNode _focusEmail = FocusNode();
  final TextEditingController _emailController = TextEditingController();
  late String currentText;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.12),
      body: SafeArea(
          child: Center(
        child: Container(
          padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.05),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(12)),
          margin: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Forget Password',
                style: appTheme?.text35BoldBlack,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Please enter your email,we will send you a verification code',
                style: appTheme?.text16SemiGrey,
              ),
              SizedBox(
                height: 15,
              ),
              emailTextField(context),
              CustomWidgets().getButton(() {
                var data = {
                  "isFromForgetPassword": 'false',
                };
                Get.toNamed(verify, arguments: data);
                navigationController.navigateTo(verify);
              }, 'Verify', buttonWidth: double.infinity)
            ],
          ),
        ),
      )),
    );
  }

  Widget emailTextField(BuildContext context) => CommonTextfield(
        textFieldHeight: MediaQuery.of(context).size.height * 0.05,
        textFieldWidth: double.infinity,
        label: 'E-mail',
        validation: (v) {
          if (!v.isEmail) {
            return 'Kindly enter a valid email';
          }
        },
        focusNode: _focusEmail,
        textOption: TextFieldOption(
            inputController: _emailController,
            hintText: 'Enter your email address'),
      );
}
