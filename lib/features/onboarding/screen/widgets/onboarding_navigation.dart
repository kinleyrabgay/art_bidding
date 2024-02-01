import 'package:bidding_app/features/onboarding/controller/onboarding_controller.dart';
import 'package:bidding_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:bidding_app/utils/constants/sizes.dart';
import 'package:bidding_app/utils/device/device_utility.dart';
import 'package:bidding_app/utils/helpers/helper_functions.dart';

class OnboardingDotNavigation extends StatelessWidget {
  const OnboardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instace;
    final dark = FAHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: FADeviceUtils.getBottomNavigationBarHeight() + 35,
      left: FASizes.defaultSpace,
      child: SmoothPageIndicator(
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? FAColors.white : FAColors.dark,
          dotHeight: 6,
        ),
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
      ),
    );
  }
}
