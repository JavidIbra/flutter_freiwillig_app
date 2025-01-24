import 'package:flutter/material.dart';

import 'package:flutter_freiwillig_app/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:flutter_freiwillig_app/features/authentication/screens/onboarding/widgets/onboarding_navigation.dart';
import 'package:flutter_freiwillig_app/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:flutter_freiwillig_app/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:flutter_freiwillig_app/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:flutter_freiwillig_app/utils/constants/image_strings.dart';
import 'package:flutter_freiwillig_app/utils/constants/text_string.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: CImages.onBoardingImage1,
                title: CTexts.onBoardingTitle1,
                subtitle: CTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: CImages.onBoardingImage2,
                title: CTexts.onBoardingTitle2,
                subtitle: CTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: CImages.onBoardingImage3,
                title: CTexts.onBoardingTitle3,
                subtitle: CTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          /// Skip button
          const OnBoardingSkip(),

          /// Dot Navigation SmoothPageInadicator
          const OnBoardingDotNavigation(),

          /// Circular Button
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}
