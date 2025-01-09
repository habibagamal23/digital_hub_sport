import 'package:degitalhubsport/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle headlineB = TextStyle(
    fontFamily: 'Open Sans',
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
    height: 38.4 / 24,
    color: ColorsManager.gray50,
  );

  static TextStyle body = TextStyle(
    fontFamily: 'Open Sans',
    fontSize: 18.sp,
    fontWeight: FontWeight.w400,
    height: 28.8 / 18,
    color: ColorsManager.black500,
  );

  static TextStyle title1B = TextStyle(
    fontFamily: 'Open Sans',
    fontSize: 41.sp,
    fontWeight: FontWeight.w600,
    height: 65.6 / 41,
    color:ColorsManager.gray50 ,
  );

  static TextStyle headline = TextStyle(
    fontFamily: 'Open Sans',
    fontSize: 24.sp,
    fontWeight: FontWeight.w400,
    height: 38.4 / 24,
    color: ColorsManager.gray50 ,
  );

  static TextStyle headlineGray = TextStyle(
    fontFamily: 'Open Sans',
    fontSize: 24.sp,
    fontWeight: FontWeight.w400,
    height: 38.4 / 24,
    color: ColorsManager.gray600,
  );

  static TextStyle headlineWhite = TextStyle(
    fontFamily: 'Open Sans',
    fontSize: 24.sp,
    fontWeight: FontWeight.w400,
    height: 38.4 / 24,
    color: Color(0xFFFFFFFF),
  );

  static TextStyle title2B = TextStyle(
    fontFamily: 'Open Sans',
    fontSize: 31.sp,
    fontWeight: FontWeight.w600,
    height: 49.6 / 31,
    color:ColorsManager.gray50
  );
}