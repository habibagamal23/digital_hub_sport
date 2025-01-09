import 'package:degitalhubsport/features/onBoarding/widgets/dot_indecator.dart';
import 'package:degitalhubsport/features/onBoarding/widgets/skip_or_contanui_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../core/route/approuter.dart';
import '../../core/theme/style.dart';
import '../../core/utils/spacing.dart';
import 'onboarding_data.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: onboardingData.length,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemBuilder: (context, index) {
              final data = onboardingData[index];
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      data.imagePath,
                      width: 300.w,
                      height: 300.h,
                    ),
                    verticalSpace(40),
                    Text(data.title,
                        textAlign: TextAlign.center,
                        style: TextStyles.headlineB),
                    verticalSpace(16),
                    Text(data.description,
                        textAlign: TextAlign.center, style: TextStyles.body),
                  ],
                ),
              );
            },
          ),
          // Button
          Positioned(
            top: 50.h,
            right: 20.w,
            child:SkipOrContinueButton(
              isLastPage: _currentPage == onboardingData.length - 1,
              onPressed: () => context.go(ConstantsRoutes.loginScreen),
            ),
          ),
          // Dots Indicator
          Positioned(
            bottom: 50.h,
            left: 0,
            right: 0,
            child:DotsIndicator(
              currentPage: _currentPage,
              totalPages: onboardingData.length,
            ),
          ),
        ],
      ),
    );
  }
}
