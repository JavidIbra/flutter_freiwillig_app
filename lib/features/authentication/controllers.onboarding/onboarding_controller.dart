import 'package:flutter/material.dart';
import 'package:flutter_freiwillig_app/features/authentication/screens/signup/signup.dart';
// import 'package:flutter_ecommerce_app/features/authentication/screens/signup/signup.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  ///variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  /// Update Current index when Page Scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  /// Jump to the spesific dot selected page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  // Update Current index and jump to next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.offAll(() => const SignupScreen());
      // Get.offAll(() => const LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  /// Update Current index and jump to last page

  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpTo(2);
  }
}
