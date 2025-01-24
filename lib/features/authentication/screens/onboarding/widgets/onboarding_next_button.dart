import 'package:flutter/material.dart';
import 'package:flutter_freiwillig_app/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:flutter_freiwillig_app/utils/constants/colors.dart';
import 'package:flutter_freiwillig_app/utils/constants/sizes.dart';
import 'package:flutter_freiwillig_app/utils/device/device_utility.dart';
import 'package:flutter_freiwillig_app/utils/helpers/helper_functions.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);
    return Positioned(
      right: CSizes.defaultSpace,
      bottom: CDeviceUtils.getBottomNavigationbarHeight(),
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: dark ? CColors.primary : CColors.black),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
