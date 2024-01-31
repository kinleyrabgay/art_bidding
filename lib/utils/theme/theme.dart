import 'package:flutter/material.dart';
import 'package:bidding_app/utils/theme/custom_theme/appbar_theme.dart';
import 'package:bidding_app/utils/theme/custom_theme/bottom_sheet_theme.dart';
import 'package:bidding_app/utils/theme/custom_theme/checkbox_theme.dart';
import 'package:bidding_app/utils/theme/custom_theme/chip_theme.dart';
import 'package:bidding_app/utils/theme/custom_theme/elevated_theme.dart';
import 'package:bidding_app/utils/theme/custom_theme/outlined_button_theme.dart';
import 'package:bidding_app/utils/theme/custom_theme/text_field_theme.dart';
import 'package:bidding_app/utils/theme/custom_theme/text_theme.dart';

class FAAppTheme {
  // Private
  FAAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: FATextTheme.lightTextTheme,
    chipTheme: FAChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: FAAppBarTheme.lightAppBarTheme,
    checkboxTheme: FACheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: FABottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: FAElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: FAOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: FATextFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    textTheme: FATextTheme.darkTextTheme,
    chipTheme: FAChipTheme.darkChipTheme,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: FAAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: FABottomSheetTheme.darkBottomSheetTheme,
    checkboxTheme: FACheckboxTheme.darkCheckboxTheme,
    elevatedButtonTheme: FAElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: FAOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: FATextFieldTheme.darkInputDecorationTheme,
  );
}
