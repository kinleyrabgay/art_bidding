import 'package:bidding_app/features/authentication/screen/registration/widgets/input_field.dart';
import 'package:bidding_app/features/authentication/screen/widgets/auth_text_header.dart';
import 'package:bidding_app/utils/constants/sizes.dart';
import 'package:bidding_app/utils/constants/text.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: FASizes.defaultSpace,
              vertical: 0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Auth Email Header
                AuthTextHeader(
                  title: FATexts.createPasswordTitle,
                  subTitle: FATexts.createPasswordSubTitle,
                ),

                SizedBox(height: FASizes.spaceBtwSections),

                //--- Password
                FAInputField(),

                // //--- Login Form
                // FAAuthenticationForm(),

                // // --- Divider
                // SizedBox(height: FASizes.spaceBtwSections),
                // FAFormDivider(divierText: FATexts.orSignInWith),
                // SizedBox(height: FASizes.spaceBtwSections),

                // // --- Social Button
                // FASocialButton()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
