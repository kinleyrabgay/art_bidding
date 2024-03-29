import 'package:bidding_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class FATextFieldTheme {
  FATextFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: FAColors.grey,
    suffixIconColor: FAColors.darkGrey,
    // constraints: const BoxConstraints.expand(height: 14)
    labelStyle: const TextStyle().copyWith(fontSize: 14, color: FAColors.grey),
    hintStyle: const TextStyle().copyWith(fontSize: 14, color: FAColors.grey),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    contentPadding:
        const EdgeInsets.symmetric(vertical: 18.0, horizontal: 12.0),
    floatingLabelStyle: const TextStyle().copyWith(
      color: Colors.black.withOpacity(0.8),
    ),
    border: const OutlineInputBorder().copyWith(
      // borderRadius: BorderRadius.circular(14),
      borderRadius: BorderRadius.zero,
      borderSide: const BorderSide(width: 1, color: FAColors.grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      // borderRadius: BorderRadius.circular(14),
      borderRadius: BorderRadius.zero,
      borderSide: const BorderSide(width: 1, color: FAColors.grey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      // borderRadius: BorderRadius.circular(14),
      borderRadius: BorderRadius.zero,
      borderSide: const BorderSide(width: 1, color: Colors.black12),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      // borderRadius: BorderRadius.circular(14),
      borderRadius: BorderRadius.zero,
      borderSide: const BorderSide(width: 1, color: Colors.red),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      // borderRadius: BorderRadius.circular(14),
      borderRadius: BorderRadius.zero,
      borderSide: const BorderSide(width: 1, color: Colors.orange),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: FAColors.grey,
    suffixIconColor: FAColors.grey,
    // constraints: const BoxConstraints.expand(height: 14)
    labelStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.white),
    hintStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.white),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    contentPadding:
        const EdgeInsets.symmetric(vertical: 18.0, horizontal: 12.0),
    floatingLabelStyle: const TextStyle().copyWith(
      color: Colors.white.withOpacity(0.8),
    ),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: FAColors.grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: FAColors.grey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Colors.white),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Colors.red),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Colors.orange),
    ),
  );
}
