import 'package:flutter/material.dart';
import 'package:flutter_freiwillig_app/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:flutter_freiwillig_app/utils/constants/sizes.dart';
import 'package:flutter_freiwillig_app/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: CDeviceUtils.getAppBarHeight(),
      right: CSizes.defaultSpace,
      child: TextButton(
        onPressed: () => OnBoardingController.instance.skipPage,
        child: const Text("Skip"),
      ),
    );
  }
}
