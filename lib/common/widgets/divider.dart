import 'package:bidding_app/utils/constants/colors.dart';
import 'package:bidding_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class FAFormDivider extends StatelessWidget {
  const FAFormDivider({
    super.key,
    required this.divierText,
  });

  final String divierText;

  @override
  Widget build(BuildContext context) {
    final isDark = FAHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: isDark ? FAColors.darkGrey : FAColors.grey,
            thickness: 0.5,
            // indent: 60,
            endIndent: 5,
          ),
        ),
        Text(
          divierText,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
            color: isDark ? FAColors.darkGrey : FAColors.grey,
            thickness: 0.5,
            indent: 5,
            // endIndent: 60,
          ),
        ),
      ],
    );
  }
}
