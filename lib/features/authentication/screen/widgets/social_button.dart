import 'package:bidding_app/utils/constants/colors.dart';
import 'package:bidding_app/utils/constants/image.dart';
import 'package:bidding_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class FASocialButton extends StatelessWidget {
  const FASocialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: OutlinedButton(
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(
                  width: FASizes.iconMd,
                  height: FASizes.iconMd,
                  image: AssetImage(FAImages.goggle),
                ),
                const SizedBox(width: FASizes.spaceBtwItems),
                Text(
                  'Continue with Google',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .apply(color: FAColors.black),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: FASizes.spaceBtwItems),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton(
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // const Icon(Iconsax.arrow_right_1),
                const Image(
                  width: FASizes.iconMd,
                  height: FASizes.iconMd,
                  image: AssetImage(FAImages.facebook),
                ),
                const SizedBox(width: FASizes.spaceBtwItems),
                Text(
                  'Continue with Facebook',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .apply(color: FAColors.black),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
