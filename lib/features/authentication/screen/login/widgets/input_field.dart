import 'package:bidding_app/features/authentication/controller/login_controller.dart';
import 'package:bidding_app/utils/constants/colors.dart';
import 'package:bidding_app/utils/constants/sizes.dart';
import 'package:bidding_app/utils/validators/validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class FAInputField extends StatelessWidget {
  const FAInputField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Your Email',
          style: Theme.of(context).textTheme.bodySmall,
        ),
        const SizedBox(height: FASizes.spaceBtwItems / 2),
        TextFormField(
          controller: controller.email,
          validator: (value) => FAValidator.validateEmail(value),
          decoration: InputDecoration(
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.zero,
            ),
            hintText: 'youremail@email.xyz',
            hintStyle: Theme.of(context).textTheme.labelLarge,
          ),
        ),
        const SizedBox(height: FASizes.spaceBtwItems * 1.5),
        // Button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () => controller.signIn(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Next',
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .apply(color: FAColors.white),
                ),
                const SizedBox(width: FASizes.spaceBtwItems),
                const Icon(Iconsax.arrow_right_1)
              ],
            ),
          ),
        )
      ],
    );
  }
}
