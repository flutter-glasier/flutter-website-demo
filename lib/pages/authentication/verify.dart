import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/helpers/theme_helper.dart';
import 'package:flutter_web_dashboard/widgets/custom_widget.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyOTPScreen extends StatefulWidget {
  VerifyOTPScreen({Key? key}) : super(key: key);

  @override
  State<VerifyOTPScreen> createState() => _VerifyOTPScreenState();
}

class _VerifyOTPScreenState extends State<VerifyOTPScreen> {
  String? isFromForgetPassword;
  late String currentText;

  @override
  void initState() {
    isFromForgetPassword = Get.parameters['isFromForgetPassword'];
    super.initState();
  }

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
                'Verify your email',
                style: appTheme?.text35BoldBlack,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Check your mail box we have sent 6 digit long code',
                style: appTheme?.text16SemiGrey,
              ),
              SizedBox(
                height: 25,
              ),
              phoneOTPTextField(),
              SizedBox(
                height: 15,
              ),
              resendCode(),
              SizedBox(
                height: 15,
              ),
              CustomWidgets().getButton(() {
                if (isFromForgetPassword == 'false') {
                  Get.toNamed('resetPassword');
                } else {
                  Get.toNamed('dashboard');
                }
              }, 'Verify', buttonWidth: double.infinity)
            ],
          ),
        ),
      )),
    );
  }

  Widget resendCode() => Text(
        'Resend code',
        style: TextStyle(color: Colors.blue, fontSize: 15),
      );

  Widget phoneOTPTextField() => PinCodeTextField(
        appContext: context,

        pastedTextStyle: TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.bold,
        ),
        length: 6,
        obscureText: false,
        obscuringCharacter: '*',
        animationType: AnimationType.fade,
        validator: (v) {
          if (v!.length < 3) {
            return "I'm from validator";
          } else {
            return null;
          }
        },

        pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(5),
          fieldHeight: 60,
          fieldWidth: 50,
          activeFillColor: Colors.white,
          activeColor: Colors.white,
          borderWidth: 0.5,
          disabledColor: Colors.white,
          errorBorderColor: Colors.red,
          fieldOuterPadding: EdgeInsets.zero,
          inactiveColor: Colors.white,
          inactiveFillColor: Colors.white,
        ),
        cursorColor: Colors.black,
        animationDuration: Duration(milliseconds: 300),
        textStyle: TextStyle(fontSize: 20, height: 1.6),
        backgroundColor: Colors.white,
        enableActiveFill: true,
        // errorAnimationController: errorController,
        // controller: textEditingController,
        keyboardType: TextInputType.number,
        boxShadows: [
          BoxShadow(
            offset: Offset(0, 1),
            color: Colors.grey,
            blurRadius: 1,
          )
        ],
        onCompleted: (v) {
          print("Completed");
        },
        // onTap: () {
        //   print("Pressed");
        // },
        onChanged: (value) {
          print(value);
          setState(() {
            currentText = value;
          });
        },
        beforeTextPaste: (text) {
          print("Allowing to paste $text");
          //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
          //but you can show anything you want here, like your pop up saying wrong paste format or etc
          return true;
        },
      );
}
