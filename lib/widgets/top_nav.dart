import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/style.dart';
import 'package:flutter_web_dashboard/controllers/menu_controller.dart';
import 'package:flutter_web_dashboard/helpers/reponsiveness.dart';
import 'package:flutter_web_dashboard/helpers/theme_helper.dart';
import 'package:flutter_web_dashboard/routing/routes.dart';
import 'package:flutter_web_dashboard/widgets/custom_widget.dart';
import 'package:get/get.dart';

import '../constants/controllers.dart';
import 'custom_text.dart';

MenuController menuController = Get.put(MenuController());
AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      leading: !ResponsiveWidget.isSmallScreen(context)
          ? Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Image.asset(
                    "assets/icons/logo.png",
                    width: 28,
                  ),
                ),
              ],
            )
          : IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                key.currentState!.openDrawer();
              }),
      title: Container(
        child: Row(
          children: [
            Visibility(
                visible: !ResponsiveWidget.isSmallScreen(context),
                child: CustomText(
                  text: "Enquiry",
                  color: lightGrey,
                  size: 20,
                  weight: FontWeight.bold,
                )),
            Expanded(child: Container()),
            menuItem('Services', false),
            menuItem('Contact us', false),
            CustomWidgets()
                .getButton(() {}, 'Sign-in', buttonHeight: 40, buttonWidth: 80)
          ],
        ),
      ),
      iconTheme: IconThemeData(color: dark),
      elevation: 0,
      backgroundColor: appTheme!.whiteColor,
    );

Widget menuItem(String label, bool isActive) => Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Text(
        label,
        style: isActive ? appTheme!.text16SemiGrey : appTheme!.text16SemiBlack,
      ),
    );
