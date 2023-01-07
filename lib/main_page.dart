import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'package:twentyfirst/commons/theme_manager.dart';
import 'package:twentyfirst/pages/bottom_navigation_page.dart';

import 'commons/exporter.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => MaterialApp(
        title: 'TwentyFirst',
        debugShowCheckedModeBanner: false,
        theme: getApplicationTheme(),
        home: SplashScreenView(
          navigateRoute: const HomePageNavigationPage(),
          duration: 2800,
          imageSize: 100,
          // imageSrc: 'assets/images/logo.jpeg',
          text: 'Powered by Naresh',
          textType: TextType.ColorizeAnimationText,
          colors: [
            ColorManager.darkPurple,
            ColorManager.middleBlue,
            ColorManager.amber,
            ColorManager.red,
            ColorManager.green,
            ColorManager.primary,
          ],
          textStyle: TextStyle(
            fontSize: FontSize.s30,
            fontFamily: 'Dancing Script',
            letterSpacing: 2.0,
            fontWeight: FontWeightManager.bold,
            color: ColorManager.primary,
          ),
          backgroundColor: ColorManager.white,
        ),
      ),
    );
  }
}
