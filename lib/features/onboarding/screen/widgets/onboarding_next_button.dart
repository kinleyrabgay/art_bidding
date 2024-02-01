import 'package:bidding_app/features/onboarding/controller/onboarding_controller.dart';
import 'package:bidding_app/utils/constants/colors.dart';
import 'package:bidding_app/utils/constants/sizes.dart';
import 'package:bidding_app/utils/device/device_utility.dart';
import 'package:bidding_app/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = FAHelperFunctions.isDarkMode(context);
    return Positioned(
      right: FASizes.defaultSpace,
      bottom: FADeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () {
          OnboardingController.instace.nextPage();
        },
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: dark ? FAColors.primary : FAColors.black),
        child: const Icon(
          CupertinoIcons.arrow_right,
          color: Colors.white,
        ),
      ),
    );
  }
}
