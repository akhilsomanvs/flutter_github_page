import 'package:flutter/material.dart';
import 'package:github_page/utils/commonUtils/size_config.dart';

class AppTheme {
  static _AppColors appColors = _AppColors();
  static _AppTextThemes textThemes = _AppTextThemes(primaryTextColor: appColors.appOrange);
  static _AppShapes appShapes = _AppShapes();

  static double get borderRadius => appShapes.borderRadius;

  static double get dialogBorderRadius => appShapes.dialogBorderRadius;
  static Shadow appLogoTextShadow = const Shadow(color: Colors.black, blurRadius: 4.0, offset: Offset(0, 4));
}

//region AppColors
class _AppColors {
  //region Color Pallete

  final Color appBlack = const Color(0xFF060606);
  final Color appWhite = const Color(0xFFE3E3E3);
  final Color appGrey = const Color(0xFFC1C0BF);
  final Color appDarkGrey = const Color(0xFF494949);
  final Color appDarkOrange = const Color(0xFFC9590E);
  final Color appBrown = const Color(0xFF5D2D0A);
  final Color appOrange = const Color(0xFFFD891D);

//endregion

}
//endregion

//region Text Themes
class _AppTextThemes {
  static const String _fontFamily = "RobotoCondensed";
  late TextStyle _textStyle;

  ///Commonly used text style in the app.

  late TextStyle subtitle1 = _textStyle.copyWith(fontSize: SizeConfig.getTextSize(8), fontWeight: FontWeight.normal);
  late TextStyle subtitle2 = _textStyle.copyWith(fontSize: SizeConfig.getTextSize(10), fontWeight: FontWeight.normal);
  late TextStyle bodyText1 = _textStyle.copyWith(fontSize: SizeConfig.getTextSize(12), fontWeight: FontWeight.normal);
  late TextStyle bodyText2 = _textStyle.copyWith(fontSize: SizeConfig.getTextSize(14), fontWeight: FontWeight.normal);
  late TextStyle headline1 = _textStyle.copyWith(fontSize: SizeConfig.getTextSize(14), fontWeight: FontWeight.bold);
  late TextStyle headline2 = _textStyle.copyWith(fontSize: SizeConfig.getTextSize(16), fontWeight: FontWeight.bold);
  late TextStyle headline3 = _textStyle.copyWith(fontSize: SizeConfig.getTextSize(22), fontWeight: FontWeight.bold);
  late TextStyle headline4 = _textStyle.copyWith(fontSize: SizeConfig.getTextSize(30), fontWeight: FontWeight.bold);

  Color primaryTextColor;

  _AppTextThemes({required this.primaryTextColor}) {
    _textStyle = TextStyle(fontFamily: _fontFamily, color: primaryTextColor, height: 1);
  }
}
//endregion

//region App backgrounds
class _AppShapes {
  static const double _borderRadius = 8;
  static const double _dialogBorderRadius = 16;

  double get dialogBorderRadius => _dialogBorderRadius;

  double get borderRadius => _borderRadius;

  RoundedRectangleBorder cardShape = RoundedRectangleBorder(borderRadius: BorderRadius.circular(_borderRadius));
}
//endregion
