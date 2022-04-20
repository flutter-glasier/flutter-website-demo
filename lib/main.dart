import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:flutter_web_dashboard/constants/style.dart';
import 'package:flutter_web_dashboard/controllers/menu_controller.dart';
import 'package:flutter_web_dashboard/controllers/navigation_controller.dart';
import 'package:flutter_web_dashboard/controllers/service_controller.dart';
import 'package:flutter_web_dashboard/pages/EditProfile/edit_profile.dart';
import 'package:flutter_web_dashboard/pages/authentication/forget-password.dart';
import 'package:flutter_web_dashboard/pages/authentication/verify.dart';
import 'package:flutter_web_dashboard/pages/services/services.dart';
import 'package:flutter_web_dashboard/pages/utility/success_screen.dart';
import 'package:flutter_web_dashboard/utils/navigator.dart';
import 'package:flutter_web_dashboard/widgets/layout.dart';
import 'package:flutter_web_dashboard/pages/404/error.dart';
import 'package:flutter_web_dashboard/pages/authentication/authentication.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kiwi/kiwi.dart';

import 'helpers/theme_helper.dart';
import 'routing/routes.dart';

late KiwiContainer app;
void main() {
  Get.put(MenuController());
  Get.put(NavigationController());
  Get.put(ServiceController());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: appTheme!.colorPrimary, // navigation bar color
    statusBarColor: appTheme!.colorPrimary, // status bar color
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: rootRoute,
      onGenerateRoute: generateRoute,
      unknownRoute: GetPage(
          name: '/not-found',
          page: () => PageNotFound(),
          transition: Transition.fadeIn),
      getPages: [
        GetPage(
            name: rootRoute,
            page: () {
              return SiteLayout();
            }),
        GetPage(
            name: authenticationPageRoute, page: () => AuthenticationPage()),
        GetPage(name: verify, page: () => VerifyOTPScreen()),
        GetPage(
          name: editProfileRoute,
          page: () => EditProfile(),
        ),
        GetPage(
          name: forgetPassword,
          page: () => ForgetPassword(),
        ),
        GetPage(
          name: successScreen,
          page: () => SuccessScreen(),
        ),
        // GetPage(
        //   name: viewEnquiryDetails,
        //   page: () => Enquiry(),
        // ),
      ],
      scrollBehavior: MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown
        },
      ),
      navigatorObservers: [FlutterSmartDialog.observer],
      builder: FlutterSmartDialog.init(),
      debugShowCheckedModeBanner: false,
      title: 'Dashboard',
      theme: ThemeData(
        scaffoldBackgroundColor: light,
        textTheme: GoogleFonts.latoTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.black),
        pageTransitionsTheme: PageTransitionsTheme(builders: {
          TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
          TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
        }),
        primarySwatch: Colors.blue,
      ),
      // home: Services(),
      // builder: _builder,
    );
  }
}

Widget _builder(BuildContext context, Widget? child) {
  return Column(
    children: <Widget>[
      Expanded(child: child!),
    ],
  );
}
