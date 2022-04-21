import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/helpers/theme_helper.dart';
import 'package:flutter_web_dashboard/widgets/CommonTextfield.dart';
import 'package:flutter_web_dashboard/widgets/custom_widget.dart';
import 'package:lottie/lottie.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final TextEditingController _passwordController = TextEditingController();

  final TextEditingController _confirmPasswordController =
      TextEditingController();

  final FocusNode _focusPassword = FocusNode();
  final FocusNode _focusConfirmPassword = FocusNode();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(50),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(7)),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Lottie.asset('assets/animation/forget-password.json'),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Create a new password',
                      style: appTheme!.text35BoldBlack,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    passwordTextField(),
                    confirmPasswordTextField(),
                    SizedBox(
                      height: 25,
                    ),
                    CustomWidgets().getButton(() {
                      if (_formKey.currentState!.validate()) {
                        print('object');
                      }
                    }, 'Submit',
                        buttonWidth: MediaQuery.of(context).size.width * 0.15)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget passwordTextField() => CommonTextfield(
        textFieldHeight: 70,
        textFieldWidth: MediaQuery.of(context).size.width * 0.15,
        label: 'Password*',
        focusNode: _focusPassword,
        validation: (v) {
          if (v.isEmpty) {
            return 'This field is required, can\'t be empty';
          }
        },
        textOption: TextFieldOption(
            inputController: _passwordController,
            hintText: 'Set a new password'),
      );

  Widget confirmPasswordTextField() => CommonTextfield(
        textFieldHeight: 50,
        textFieldWidth: MediaQuery.of(context).size.width * 0.15,
        label: 'Confirm Password*',
        focusNode: _focusConfirmPassword,
        validation: (v) {
          if (v.trim() != _confirmPasswordController.text.trim()) {
            return 'Password doesn\'t get match';
          }
        },
        textOption: TextFieldOption(
            inputController: _confirmPasswordController,
            hintText: 'Enter a password'),
      );
}
