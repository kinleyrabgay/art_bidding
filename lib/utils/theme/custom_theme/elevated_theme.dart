import 'package:bidding_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class FAElevatedButtonTheme {
  FAElevatedButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: FAColors.white,
      backgroundColor: FAColors.buttonPrimary,
      disabledForegroundColor: Colors.grey,
      disabledBackgroundColor: Colors.grey,
      // side: const BorderSide(color: FAColors.buttonPrimary),
      padding: const EdgeInsets.symmetric(vertical: 18),
      textStyle: const TextStyle(
        fontSize: 18,
        color: FAColors.white,
        fontWeight: FontWeight.w400,
      ),
      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
    ),
  );

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: Colors.blue,
      disabledForegroundColor: Colors.grey,
      disabledBackgroundColor: Colors.grey,
      // side: const BorderSide(color: Colors.blue),
      padding: const EdgeInsets.symmetric(vertical: 18),
      textStyle: const TextStyle(
        fontSize: 18,
        color: Colors.white,
        fontWeight: FontWeight.w400,
      ),
      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
    ),
  );
}
