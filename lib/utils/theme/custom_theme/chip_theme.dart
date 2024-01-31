import 'package:flutter/material.dart';
import 'package:bidding_app/utils/constants/colors.dart';

class FAChipTheme {
  FAChipTheme._();

  // static ChipThemeData lightChipTheme = ChipThemeData(
  //   disabledColor: FAColors.grey.withOpacity(0.4),
  //   labelStyle: const TextStyle(color: FAColors.black),
  //   selectedColor: FAColors.primary,
  //   padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
  //   checkmarkColor: FAColors.white,
  // );

  // static ChipThemeData darkChipTheme = const ChipThemeData(
  //   disabledColor: FAColors.darkerGrey,
  //   labelStyle: TextStyle(color: FAColors.white),
  //   selectedColor: FAColors.primary,
  //   padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
  //   checkmarkColor: FAColors.white,
  // );

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: FAColors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: FAColors.black),
    selectedColor: FAColors.black,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
    checkmarkColor: FAColors.white,
  );

  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: FAColors.darkerGrey,
    labelStyle: TextStyle(color: FAColors.white),
    selectedColor: FAColors.black,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
    checkmarkColor: FAColors.white,
  );
}
