import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:bidding_app/common/widgets/animation_loader.dart';
import 'package:bidding_app/utils/constants/colors.dart';
import 'package:bidding_app/utils/helpers/helper_functions.dart';

class FAFullScreenLoader {
  static void openLoadingDialog(String text, String animation) {
    showDialog(
      context: Get.overlayContext!,
      barrierDismissible: false,
      builder: (_) => PopScope(
        child: Container(
          color: FAHelperFunctions.isDarkMode(Get.context!)
              ? FAColors.dark
              : FAColors.white,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              const SizedBox(height: 250),
              FAAnimationLoaderWidget(text: text, animation: animation),
            ],
          ),
        ),
      ),
    );
  }

  static stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }
}
