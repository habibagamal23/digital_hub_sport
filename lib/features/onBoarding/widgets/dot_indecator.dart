import 'package:degitalhubsport/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DotsIndicator extends StatelessWidget {
  final int currentPage;
  final int totalPages;

  const DotsIndicator({
    Key? key,
    required this.currentPage,
    required this.totalPages,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(totalPages, (index) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: EdgeInsets.symmetric(horizontal: 4.w),
          width: currentPage == index ? 12.w : 8.w,
          height: 8.h,
          decoration: BoxDecoration(
            color: currentPage == index ? ColorsManager.mainOrange700 : ColorsManager.gray600,
            borderRadius: BorderRadius.circular(4.r),
          ),
        );
      }),
    );
  }
}
