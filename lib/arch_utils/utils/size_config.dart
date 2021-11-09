import 'package:flutter/material.dart';
import 'package:github_page/arch_utils/enums/device_screen_type.dart';
import 'package:github_page/arch_utils/utils/ui_utils.dart';

class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double _screenWidth;
  static late double _screenHeight;
  static double _blockSizeHorizontal = 0;
  static double _blockSizeVertical = 0;

  static late double _textMultiplier;
  static late double _imageSizeMultiplier;
  static late double _heightMultiplier;
  static late double _widthMultiplier;
  static bool isPortrait = true;
  static bool isMobilePortrait = false;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    isPortrait = _mediaQueryData.orientation == Orientation.portrait;
    isMobilePortrait = isPortrait && getDeviceType(_mediaQueryData) == DeviceScreenType.Mobile;

    if (isPortrait) {
      _screenWidth = _mediaQueryData.size.width;
      _screenHeight = _mediaQueryData.size.height;
    } else {
      _screenWidth = _mediaQueryData.size.height;
      _screenHeight = _mediaQueryData.size.width;
    }

    _blockSizeHorizontal = _screenWidth / 100;
    _blockSizeVertical = _screenHeight / 100;

    _textMultiplier = _blockSizeVertical;
    _imageSizeMultiplier = _blockSizeHorizontal;
    _heightMultiplier = _blockSizeVertical;
    _widthMultiplier = _blockSizeHorizontal;

    print("TextSize :$_screenHeight $_textMultiplier, Height : $_heightMultiplier, Width : $_widthMultiplier");
  }

  static double getVerticalSize(double height) {
    return (height / 8.12) * _heightMultiplier;
  }

  static double getHorizontalSize(double width) {
    return (width / 3.75) * _widthMultiplier;
  }

  static double getTextSize(double textSize) {
    return (textSize / 8.12) * _textMultiplier;
  }

  static double getTopScreenPadding() {
    return _mediaQueryData.padding.top;
  }

  static double getBottomScreenPadding() {
    return _mediaQueryData.padding.bottom;
  }

  static double getLeftScreenPadding() {
    return _mediaQueryData.padding.left;
  }

  static double getRightScreenPadding() {
    return _mediaQueryData.padding.right;
  }
}

extension SizeConfigExtension on num {
  double vdp() {
    var value = this;
    if (value is double) {
      return SizeConfig.getVerticalSize(value);
    } else {
      return SizeConfig.getVerticalSize(value.toDouble());
    }
  }

  double hdp() {
    var value = this;
    if (value is double) {
      return SizeConfig.getHorizontalSize(value);
    } else {
      return SizeConfig.getHorizontalSize(value.toDouble());
    }
  }

  double sp(){
    return vdp();
  }
}