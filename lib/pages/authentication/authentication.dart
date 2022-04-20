import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_web_dashboard/constants/controllers.dart';
import 'package:flutter_web_dashboard/constants/style.dart';
import 'package:flutter_web_dashboard/routing/routes.dart';
import 'package:flutter_web_dashboard/widgets/CommonTextfield.dart';
import 'package:flutter_web_dashboard/widgets/custom_text.dart';
import 'package:flutter_web_dashboard/widgets/custom_widget.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class AuthenticationPage extends StatefulWidget {
  static const route = 'authentication-page';
  AuthenticationPage({Key? key}) : super(key: key);

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  final TextEditingController _firstNameController = TextEditingController();

  final TextEditingController _lastNameController = TextEditingController();

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _phoneNumberController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  final TextEditingController _confirmPasswordController =
      TextEditingController();

  final TextEditingController _professionController = TextEditingController();

  final FocusNode _firstName = FocusNode();

  final FocusNode _lastName = FocusNode();

  final FocusNode _focusEmail = FocusNode();

  final FocusNode _focusPhoneNumber = FocusNode();

  final FocusNode _focusPassword = FocusNode();

  final FocusNode _focusConfirmPassword = FocusNode();

  final FocusNode _focusProfession = FocusNode();

  final _formKey = GlobalKey<FormState>();

  bool isSignUp = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: AnimatedContainer(
        duration: const Duration(milliseconds: 600),
        margin: EdgeInsets.symmetric(
            vertical: isSignUp
                ? MediaQuery.of(context).size.height * 0.07
                : MediaQuery.of(context).size.height * 0.17,
            horizontal: MediaQuery.of(context).size.width * 0.20),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        // constraints: BoxConstraints(maxWidth: 400),
        padding: EdgeInsets.all(24),
        child: Form(
          key: _formKey,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Lottie.asset('assets/animation/signup.json',
                  height: MediaQuery.of(context).size.height * 0.50,
                  width: MediaQuery.of(context).size.width * 0.20),
              Container(
                height: isSignUp
                    ? MediaQuery.of(context).size.height * 0.80
                    : MediaQuery.of(context).size.height * 0.55,
                width: MediaQuery.of(context).size.width * 0.20,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 12),
                            child: Image.asset("assets/icons/logo.png"),
                          ),
                          Expanded(child: Container()),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(!isSignUp ? "Login" : 'Signup',
                          style: GoogleFonts.roboto(
                              fontSize: 30, fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          CustomText(
                            text: isSignUp
                                ? 'Get registered your self'
                                : "Welcome back to enquiry",
                            color: lightGrey,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      isSignUp ? nameTextField(context) : Container(),
                      isSignUp ? lastName(context) : Container(),
                      emailTextField(context),
                      isSignUp ? phoneNumberTextField(context) : Container(),
                      isSignUp ? professionTextField(context) : Container(),
                      passwordTextField(context),
                      isSignUp ? confirmPassword(context) : Container(),
                      SizedBox(
                        height: 15,
                      ),
                      isSignUp
                          ? Container()
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Checkbox(
                                        value: true, onChanged: (value) {}),
                                    CustomText(
                                      text: "Remeber Me",
                                    ),
                                  ],
                                ),
                                InkWell(
                                  onTap: () {
                                    Get.toNamed(
                                      forgetPassword,
                                    );
                                    navigationController
                                        .navigateTo(forgetPassword);
                                  },
                                  child: CustomText(
                                      text: "Forgot password?", color: active),
                                )
                              ],
                            ),
                      SizedBox(
                        height: 15,
                      ),
                      // InkWell(
                      //   onTap: () {
                      //     var routeDetail = {
                      //       "route": "/",
                      //     };
                      //     // Get.offAllNamed(rootRoute);
                      //     Get.toNamed(successScreen, parameters: routeDetail);
                      //   },
                      //   child: Container(
                      //     decoration: BoxDecoration(
                      //         color: active,
                      //         borderRadius: BorderRadius.circular(20)),
                      //     alignment: Alignment.center,
                      //     width: double.maxFinite,
                      //     padding: EdgeInsets.symmetric(vertical: 16),
                      //     child: CustomText(
                      //       text: "Login",
                      //       color: Colors.white,
                      //     ),
                      //   ),
                      // ),
                      CustomWidgets().getButton(() {
                        // if (_formKey.currentState!.validate()) {}
                        Get.toNamed(verify);
                        navigationController.navigateTo(verify);
                      }, 'Login',
                          buttonWidth:
                              MediaQuery.of(context).size.width * 0.20),
                      SizedBox(
                        height: 15,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            isSignUp = !isSignUp;
                          });
                        },
                        child: RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: isSignUp
                                  ? 'Already have a account'
                                  : "Do not have an account ? "),
                          TextSpan(
                              text: isSignUp ? 'Login' : "Create an account ",
                              style: TextStyle(color: active))
                        ])),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget nameTextField(BuildContext context) => CommonTextfield(
        textFieldHeight: MediaQuery.of(context).size.height * 0.05,
        textFieldWidth: MediaQuery.of(context).size.width * 0.20,
        label: 'First-name',
        validation: (v) {
          if (v.isEmpty) {
            return 'Kindly enter a first name';
          }
        },
        focusNode: _firstName,
        textOption: TextFieldOption(
            inputController: _firstNameController,
            hintText: 'Enter your first name'),
      );

  Widget lastName(BuildContext context) => CommonTextfield(
        textFieldHeight: MediaQuery.of(context).size.height * 0.05,
        textFieldWidth: MediaQuery.of(context).size.width * 0.20,
        label: 'Last-name',
        validation: (v) {
          if (v.isEmpty) {
            return 'Kindly enter a last name';
          }
        },
        focusNode: _lastName,
        textOption: TextFieldOption(
            inputController: _lastNameController,
            hintText: 'Enter your last name'),
      );

  Widget emailTextField(BuildContext context) => CommonTextfield(
        textFieldHeight: MediaQuery.of(context).size.height * 0.05,
        textFieldWidth: MediaQuery.of(context).size.width * 0.20,
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

  Widget phoneNumberTextField(BuildContext context) => CommonTextfield(
        textFieldHeight: MediaQuery.of(context).size.height * 0.05,
        textFieldWidth: MediaQuery.of(context).size.width * 0.20,
        label: 'Phone-number',
        validation: (v) {
          if (!v.isEmail) {
            return 'Kindly enter a phone number';
          }
        },
        focusNode: _focusPhoneNumber,
        textOption: TextFieldOption(
            formatter: [LengthLimitingTextInputFormatter(10)],
            inputController: _phoneNumberController,
            hintText: 'Enter your phone number'),
      );

  Widget passwordTextField(BuildContext context) => CommonTextfield(
        textFieldHeight: MediaQuery.of(context).size.height * 0.05,
        textFieldWidth: MediaQuery.of(context).size.width * 0.20,
        label: 'Password',
        validation: (v) {
          if (!v.isEmail) {
            return 'Kindly enter a valid password';
          }
        },
        focusNode: _focusPassword,
        textOption: TextFieldOption(
            inputController: _passwordController,
            hintText: 'Enter your password'),
      );

  Widget professionTextField(BuildContext context) => CommonTextfield(
        textFieldHeight: MediaQuery.of(context).size.height * 0.05,
        textFieldWidth: MediaQuery.of(context).size.width * 0.20,
        label: 'Profession',
        readOnly: true,
        validation: (v) {
          if (!v.isEmail) {
            return 'Kindly choose your profession';
          }
        },
        focusNode: _focusProfession,
        textOption: TextFieldOption(
            postfixWid: Icon(Icons.expand_more),
            inputController: _professionController,
            hintText: 'Choose your profession'),
      );

  Widget confirmPassword(BuildContext context) => CommonTextfield(
        textFieldHeight: MediaQuery.of(context).size.height * 0.05,
        textFieldWidth: MediaQuery.of(context).size.width * 0.20,
        label: 'Confirm-Password',
        validation: (v) {
          if (v.trim() != _passwordController.text.trim()) {
            return 'Password does\'nt match';
          }
        },
        focusNode: _focusConfirmPassword,
        textOption: TextFieldOption(
            inputController: _confirmPasswordController,
            hintText: 'Confirm your password'),
      );
}
