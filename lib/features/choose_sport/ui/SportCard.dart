import 'package:degitalhubsport/core/theme/colors.dart';
import 'package:degitalhubsport/core/utils/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/theme/style.dart';

class SportCard extends StatelessWidget {
  final String name;
  final String iconPath;
  final VoidCallback onTap;

  const SportCard({
    Key? key,
    required this.name,
    required this.iconPath,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: ColorsManager.mainOrange700,
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              iconPath,
              height: 30.h,
              width: 30.w,
            ),
            verticalSpace(8),
            Text(
              name,
              style: TextStyles.title2B,
            ),
          ],
        ),
      ),
    );
  }
}
