import 'package:bidding_app/utils/constants/colors.dart';
import 'package:bidding_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class AuthTextHeader extends StatelessWidget {
  const AuthTextHeader({
    super.key,
    required this.title,
    required this.subTitle,
  });

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: FASizes.sm),
        Text(
          subTitle,
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .apply(color: FAColors.darkerGrey),
        ),
      ],
    );
  }
}
