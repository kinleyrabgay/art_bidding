import 'package:bidding_app/features/onboarding/controller/onboarding_controller.dart';
import 'package:bidding_app/features/onboarding/screen/widgets/onboarding_navigation.dart';
import 'package:bidding_app/features/onboarding/screen/widgets/onboarding_next_button.dart';
import 'package:bidding_app/features/onboarding/screen/widgets/onboarding_page.dart';
import 'package:bidding_app/features/onboarding/screen/widgets/onboarding_skip.dart';
import 'package:bidding_app/utils/constants/image.dart';
import 'package:bidding_app/utils/constants/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());

    return Scaffold(
      body: Stack(
        children: [
          // Scroll Page
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnboardingPage(
                image: FAImages.onboardingImage1,
                title: FATexts.onBoardingTitle1,
                subtitle: FATexts.onBoardingSubTitle1,
              ),
              OnboardingPage(
                image: FAImages.onboardingImage2,
                title: FATexts.onBoardingTitle2,
                subtitle: FATexts.onBoardingSubTitle2,
              ),
              OnboardingPage(
                image: FAImages.onboardingImage3,
                title: FATexts.onBoardingTitle3,
                subtitle: FATexts.onBoardingSubTitle3,
              )
            ],
          ),

          // Skip button
          const OnboardingSkip(),

          // Dot naviation
          const OnboardingDotNavigation(),

          // circular button
          const OnboardingNextButton()
        ],
      ),
    );
  }
}
