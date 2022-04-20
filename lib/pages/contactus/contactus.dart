import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_web_dashboard/helpers/theme_helper.dart';
import 'package:flutter_web_dashboard/widgets/CommonTextfield.dart';
import 'package:flutter_web_dashboard/widgets/custom_widget.dart';
import 'package:lottie/lottie.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  final TextEditingController _nameController = TextEditingController();
  final FocusNode _nameFocus = FocusNode();

  final TextEditingController _emailController = TextEditingController();
  final FocusNode _emailFocus = FocusNode();

  final TextEditingController _contactNumberController =
      TextEditingController();
  final FocusNode _contactNumberFocus = FocusNode();

  final TextEditingController _contactFormType = TextEditingController();
  final FocusNode _contactTypeFocus = FocusNode();

  final TextEditingController _commentController = TextEditingController();
  final FocusNode _commentFocus = FocusNode();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      // margin: EdgeInsets.symmetric(horizontal: 100),
      padding: EdgeInsets.symmetric(
          vertical: 20, horizontal: MediaQuery.of(context).size.width * 0.20),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: titleAndDescription()),
              Expanded(child: contactForm())
            ],
          ),
        ],
      ),
    ));
  }

  Widget titleAndDescription() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Thanks for your interest in Enquiry',
            style: appTheme!.text35BoldBlack,
          ),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam finibus cursus sapien, eget laoreet tellus feugiat posuere. Cras dolor risus, semper id tincidunt non, eleifend at odio. Praesent nec facilisis augue. Vestibulum suscipit arcu sodales libero tincidunt, at pellentesque felis fermentum. Vestibulum leo ex, rutrum vel nisi in, blandit rhoncus lorem. Maecenas sem elit, aliquam nec eleifend nec, elementum at justo',
            style: appTheme!.text12RegularGrey,
          ),
          Lottie.asset('assets/animation/contactus.json')
        ],
      );

  Widget contactForm() => Card(
        elevation: 2,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Fill up the form',
                style: appTheme!.text30BoldGrey,
              ),
              SizedBox(
                height: 15,
              ),
              nameTextField(),
              emailTextField(),
              phoneNumberTextField(),
              contactType(),
              questionType(),
              CustomWidgets().getButton(() {}, 'Submit',
                  buttonWidth: MediaQuery.of(context).size.width * 0.25)
            ],
          ),
        ),
      );

  Widget nameTextField() => CommonTextfield(
        textFieldWidth: MediaQuery.of(context).size.width * 0.25,
        focusNode: _nameFocus,
        label: 'Your name',
        textOption: TextFieldOption(
            inputController: _nameController,
            hintText: 'Enter your full-name...'),
      );

  Widget emailTextField() => CommonTextfield(
        textFieldWidth: MediaQuery.of(context).size.width * 0.25,
        focusNode: _emailFocus,
        label: 'E-mail',
        validation: (v) {
          if (v.isEmpty) {
            return 'This field required';
          }
        },
        textOption: TextFieldOption(
            inputController: _emailController,
            hintText: 'Enter your email-address'),
      );

  Widget phoneNumberTextField() => CommonTextfield(
        textFieldWidth: MediaQuery.of(context).size.width * 0.25,
        focusNode: _contactNumberFocus,
        label: 'Phone-Number',
        textOption: TextFieldOption(
            inputController: _contactNumberController,
            hintText: 'Enter your 10 digit long phone number',
            formatter: [LengthLimitingTextInputFormatter(10)]),
      );

  Widget contactType() => CommonTextfield(
        textFieldWidth: MediaQuery.of(context).size.width * 0.25,
        focusNode: _contactTypeFocus,
        label: 'Contact-Type',
        readOnly: true,
        textOption: TextFieldOption(
            inputController: _contactFormType,
            hintText: 'Choose Type',
            postfixWid: Icon(Icons.expand_more)),
      );

  Widget questionType() => CommonTextfield(
        textFieldWidth: MediaQuery.of(context).size.width * 0.25,
        textFieldHeight: MediaQuery.of(context).size.height * 0.115,
        focusNode: _commentFocus,
        label: 'Comment',
        textOption: TextFieldOption(
          hintText: 'Describe your query',
          maxLine: 5,
          inputController: _commentController,
        ),
      );
}
