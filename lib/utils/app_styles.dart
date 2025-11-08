import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';

abstract class AppStyles {
  static  TextStyle styleReguler16 = TextStyle(
      color:const Color(0xff064060),
      fontSize: getResponsiveFontSize( 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400);
  static  TextStyle styleMedium16 = TextStyle(
      color:const Color(0xff064060),
      fontSize: getResponsiveFontSize(16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500);
  static  TextStyle styleMedium20 = TextStyle(
      color:const Color(0xffFFFFFF),
      fontSize: getResponsiveFontSize(20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500);
  static  TextStyle styleSemiBold16 = TextStyle(
      color:const Color(0xff064061),
      fontSize: getResponsiveFontSize(16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600);
  static  TextStyle styleBold16 = TextStyle(
      color:const Color(0xff4EB7F2),
      fontSize: getResponsiveFontSize(16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700);
  static  TextStyle styleSemiBold20 = TextStyle(
      color:const Color(0xff064061),
      fontSize: getResponsiveFontSize(20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600);
  static  TextStyle styleReguler12 = TextStyle(
      color:const Color(0xffAAAAAA),
      fontSize: getResponsiveFontSize(16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400);
  static  TextStyle styleSemiBold24 = TextStyle(
      color:const Color(0xff4EB7F2),
      fontSize: getResponsiveFontSize(24),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600);
  static  TextStyle styleReguler14 = TextStyle(
      color:const Color(0xffAAAAAA),
      fontSize: getResponsiveFontSize(14),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400);
  static  TextStyle styleSemiBold18 = TextStyle(
      color:const Color(0xffFFFFFF),
      fontSize: getResponsiveFontSize(18),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600);
}

double getResponsiveFontSize(double fonSize) {
  double scaleFactor = getScaleFactor();
  double responsiveFontSize = scaleFactor * fonSize;
  double lowerFontSize = fonSize * 0.8;
  double upperFontSize = fonSize * 1.2;
  return responsiveFontSize.clamp(lowerFontSize, upperFontSize);
}

double getScaleFactor() {
  var dispatcher = PlatformDispatcher.instance;

  var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  var physicalWidth = dispatcher.views.first.physicalSize.width;
  var width = physicalWidth / devicePixelRatio;
  if (width < SizeConfig.tablet) {
    return width / 500;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1300;
  }
}
