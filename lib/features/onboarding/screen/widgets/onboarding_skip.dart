import 'package:bidding_app/features/onboarding/controller/onboarding_controller.dart';
import 'package:bidding_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class OnboardingSkip extends StatelessWidget {
  const OnboardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: FADeviceUtils.getAppBarHeight() - 15,
      right: 0,
      child: TextButton(
        style: TextButton.styleFrom(padding: EdgeInsets.zero),
        onPressed: () {
          OnboardingController.instace.skipPage();
        },
        child: const Text(
          'Skip',
        ),
      ),
    );
  }
}
