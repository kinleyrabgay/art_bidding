import 'package:bidding_app/features/authentication/controller/register_controller.dart';
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
    final controller = Get.put(RegisterController());
    return Form(
      key: controller.passwordFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //--- Create Password
          Text(
            'Create Password',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(height: FASizes.spaceBtwItems / 2),
          Obx(
            () => TextFormField(
              controller: controller.password,
              obscureText: controller.hidePassword.value,
              validator: (value) => FAValidator.validatePassword(value),
              decoration: InputDecoration(
                border:
                    const OutlineInputBorder(borderRadius: BorderRadius.zero),
                suffixIcon: IconButton(
                  icon: controller.hidePassword.value
                      ? const Icon(Iconsax.eye_slash)
                      : const Icon(Iconsax.eye),
                  onPressed: () => controller.hidePassword.value =
                      !controller.hidePassword.value,
                ),
                hintText: 'youremail@email.xyz',
                hintStyle: Theme.of(context).textTheme.labelLarge,
              ),
            ),
          ),

          const SizedBox(height: FASizes.spaceBtwInputFields * 2),

          //--- Confirm Password
          Text(
            'Confirm Password',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(height: FASizes.spaceBtwItems / 2),
          Obx(
            () => TextFormField(
              controller: controller.confirmPassword,
              obscureText: controller.hideConfirmPassword.value,
              validator: (value) => FAValidator.validatePasswordConfirm(
                  value, controller.password.text),
              decoration: InputDecoration(
                border:
                    const OutlineInputBorder(borderRadius: BorderRadius.zero),
                suffixIcon: IconButton(
                  icon: controller.hideConfirmPassword.value
                      ? const Icon(Iconsax.eye_slash)
                      : const Icon(Iconsax.eye),
                  onPressed: () => controller.hideConfirmPassword.value =
                      !controller.hideConfirmPassword.value,
                ),
                hintText: 'youremail@email.xyz',
                hintStyle: Theme.of(context).textTheme.labelLarge,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
