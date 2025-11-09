import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';

abstract class AppStyles {
  static TextStyle styleReguler16(context) {
    return TextStyle(
        color: const Color(0xff064060),
        fontSize: getResponsiveFontSize(context, 16),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w400);
  }

  static TextStyle styleMedium16(context) {
    return TextStyle(
        color: const Color(0xff064060),
        fontSize: getResponsiveFontSize(context, 16),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w500);
  }

  static TextStyle styleMedium20(context) {
    return TextStyle(
        color: const Color(0xff064060),
        fontSize: getResponsiveFontSize(context, 20),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w500);
  }

  static TextStyle styleSemiBold16(context) {
    return TextStyle(
        color: const Color(0xff064060),
        fontSize: getResponsiveFontSize(context, 16),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w600);
  }

  static TextStyle styleBold16(context) {
    return TextStyle(
        color: const Color(0xff4EB7F2),
        fontSize: getResponsiveFontSize(context, 16),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w700);
  }

  static TextStyle styleSemiBold20(context) {
    return TextStyle(
        color: const Color(0xff064061),
        fontSize: getResponsiveFontSize(context, 20),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w600);
  }

  static TextStyle styleReguler12(context) {
    return TextStyle(
        color: const Color(0xffAAAAAA),
        fontSize: getResponsiveFontSize(context, 12),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w400);
  }

  static TextStyle styleSemiBold24(context) {
    return TextStyle(
        color: const Color(0xff4EB7F2),
        fontSize: getResponsiveFontSize(context, 24),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w600);
  }

  static TextStyle styleReguler14(context) {
    return TextStyle(
        color: const Color(0xffAAAAAA),
        fontSize: getResponsiveFontSize(context, 14),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w400);
  }

  static TextStyle styleSemiBold18(context) {
    return TextStyle(
        color: const Color(0xffFFFFFF),
        fontSize: getResponsiveFontSize(context, 18),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w600);
  }
}

double getResponsiveFontSize(context, double fonSize) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = scaleFactor * fonSize;
  double lowerFontSize = fonSize * 0.8;
  double upperFontSize = fonSize * 1.2;
  return responsiveFontSize.clamp(lowerFontSize, upperFontSize);
}

double getScaleFactor(context) {
  var width = MediaQuery.of(context).size.width;
  if (width < SizeConfig.tablet) {
    return width / 500;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1300;
  }
}
