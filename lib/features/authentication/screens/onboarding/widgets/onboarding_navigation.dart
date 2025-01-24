import 'package:flutter/material.dart';
import 'package:flutter_freiwillig_app/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:flutter_freiwillig_app/utils/constants/colors.dart';
import 'package:flutter_freiwillig_app/utils/constants/sizes.dart';
import 'package:flutter_freiwillig_app/utils/device/device_utility.dart';
import 'package:flutter_freiwillig_app/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = CHelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: CDeviceUtils.getBottomNavigationbarHeight() + 25,
      left: CSizes.defaultSpace,
      child: SmoothPageIndicator(
        effect: ExpandingDotsEffect(
            activeDotColor: dark ? CColors.light : CColors.dark, dotHeight: 6),
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
      ),
    );
  }
}
