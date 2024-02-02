import 'package:bidding_app/features/authentication/controller/authentication_controller.dart';
import 'package:bidding_app/utils/constants/colors.dart';
import 'package:bidding_app/utils/constants/sizes.dart';
import 'package:bidding_app/utils/validators/validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class FAAuthenticationForm extends StatelessWidget {
  const FAAuthenticationForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AuthenticationController());
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
        const SizedBox(height: FASizes.spaceBtwSections),
        // Button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () => controller.redirectAuthScreen(),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Next', style: TextStyle(color: FAColors.white)),
                SizedBox(width: FASizes.spaceBtwItems),
                Icon(Iconsax.arrow_right_1)
              ],
            ),
          ),
        )
      ],
    );
  }
}
