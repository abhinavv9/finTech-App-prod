import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const dark = Color(0xff2B3467);
const background = Color(0XFFE5E5E5);
const light = Color(0xff3E54AC);

// Needs a reconsideration .
class Palette {
  static const Color darkBlue = Color(0xff092E34);
  static const Color lightBlue = Color(0xff489FB5);
  static const Color orange = Color(0xffFFA62B);
  static const Color darkOrange = Color(0xfff36343);
  static const Color cherryRed = Color(0xFFFA2424);
  static const Color teal = Color(0xFF009688);
  static const Color disabledGrey = Color(0xd3d3d3d3);
}

const kSpacingUnit = 10;

const kDarkPrimaryColor = Color(0xFF212121);
const kDarkSecondaryColor = Color(0xFF373737);
const kLightPrimaryColor = Color(0xFFFFFFFF);
const kLightSecondaryColor = Color(0xFFF3F7FB);
const kAccentColor = Color(0xFFFFC107);

final kTitleTextStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.w600,
);

final kCaptionTextStyle = TextStyle(
    //fontSize: ScreenUtil().setSp(kSpacingUnit.w * 1.3),
    fontWeight: FontWeight.w100,
    color: Colors.white);

final kButtonTextStyle = TextStyle(
  // fontSize: ScreenUtil().setSp(kSpacingUnit.w * 1.5),
  fontWeight: FontWeight.w400,
  color: kDarkPrimaryColor,
);

final kDarkTheme = ThemeData(
  brightness: Brightness.dark,
  fontFamily: 'SFProText',
  primaryColor: kDarkPrimaryColor,
  canvasColor: kDarkPrimaryColor,
  backgroundColor: kDarkSecondaryColor,
  accentColor: kAccentColor,
  iconTheme: ThemeData.dark().iconTheme.copyWith(
        color: kLightSecondaryColor,
      ),
  textTheme: ThemeData.dark().textTheme.apply(
        fontFamily: 'SFProText',
        bodyColor: kLightSecondaryColor,
        displayColor: kLightSecondaryColor,
      ),
);

final kLightTheme = ThemeData(
  brightness: Brightness.light,
  fontFamily: 'SFProText',
  primaryColor: kLightPrimaryColor,
  canvasColor: kLightPrimaryColor,
  backgroundColor: kLightSecondaryColor,
  accentColor: kAccentColor,
  iconTheme: ThemeData.light().iconTheme.copyWith(
        color: kDarkSecondaryColor,
      ),
  textTheme: ThemeData.light().textTheme.apply(
        fontFamily: 'SFProText',
        bodyColor: kDarkSecondaryColor,
        displayColor: kDarkSecondaryColor,
      ),
);
