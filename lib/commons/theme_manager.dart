import 'package:flutter/material.dart';

import 'colors_manager.dart';
import 'font_manager.dart';
import 'font_styles_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    // main colors of the app
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.primaryOpacity70,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.grey1,
    errorColor: ColorManager.red,
    backgroundColor: const Color.fromARGB(255, 242, 242, 247),
    // ripple color
    splashColor: ColorManager.primaryOpacity70,

    // card view theme
    // cardTheme: CardTheme(
    //     color: ColorManager.white,
    //     shadowColor: ColorManager.grey,
    //     elevation: AppSize.s4),
    //
    // App bar theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorManager.primary,
      shadowColor: ColorManager.primaryOpacity70,
    ),

    // Button theme
    buttonTheme: ButtonThemeData(
      shape: const StadiumBorder(),
      disabledColor: ColorManager.grey1,
      buttonColor: ColorManager.primary,
      splashColor: ColorManager.primaryOpacity70,
    ),

    //checkbox
    unselectedWidgetColor: ColorManager.skyBlue,

    // elevated button theme
    // elevatedButtonTheme: ElevatedButtonThemeData(
    //   style: ElevatedButton.styleFrom(
    //     textStyle: getRegularStyle(color: ColorManager.white),
    //     primary: ColorManager.primary,
    //     shape: RoundedRectangleBorder(
    //       borderRadius: BorderRadius.circular(AppRadius.r12),
    //     ),
    //   ),
    // ),

    // Text theme
    textTheme: TextTheme(
        headline1: getSemiBoldStyle(color: ColorManager.darkGrey, fontSize: FontSize.s16),
        headline2: getRegularStyle(color: ColorManager.white, fontSize: FontSize.s16),
        headline3: getBoldStyle(color: ColorManager.black, fontSize: FontSize.s14),
        subtitle1: getMediumStyle(color: ColorManager.lightGrey, fontSize: FontSize.s14),
        subtitle2: getMediumStyle(color: ColorManager.primary, fontSize: FontSize.s14),
        caption: getRegularStyle(color: ColorManager.grey1, fontSize: FontSize.s14),
        bodyText1: getRegularStyle(color: ColorManager.grey, fontSize: FontSize.s14)),
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: ColorManager.grey),

    // input decoration theme (text form field)
    // inputDecorationTheme: InputDecorationTheme(
    //   // contentPadding: EdgeInsets.all(AppPadding.p8),
    //   // hint style
    //   hintStyle: getRegularStyle(color: ColorManager.grey1),

    //   // label style
    //   labelStyle: getMediumStyle(color: ColorManager.darkGrey),
    //   // error style
    //   errorStyle: getRegularStyle(color: ColorManager.error),

    //   // enabled border
    //   enabledBorder: OutlineInputBorder(
    //       borderSide: BorderSide(color: ColorManager.grey, width: AppSize.s1_5),
    //       borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))),

    //   // focused border
    //   focusedBorder: OutlineInputBorder(
    //       borderSide:
    //           BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
    //       borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))),

    //   // error border
    //   errorBorder: OutlineInputBorder(
    //       borderSide:
    //           BorderSide(color: ColorManager.error, width: AppSize.s1_5),
    //       borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))),
    //   // focused error border
    //   focusedErrorBorder: OutlineInputBorder(
    //       borderSide:
    //           BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
    //       borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))),
    // ),
  );
}
