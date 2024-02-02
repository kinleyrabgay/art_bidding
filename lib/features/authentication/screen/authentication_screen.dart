import 'package:bidding_app/common/widgets/divider.dart';
import 'package:bidding_app/features/authentication/screen/widgets/auth_text_header.dart';
import 'package:bidding_app/features/authentication/screen/widgets/authentication_form.dart';
import 'package:bidding_app/features/authentication/screen/widgets/social_button.dart';
import 'package:bidding_app/utils/constants/sizes.dart';
import 'package:bidding_app/utils/constants/text.dart';
import 'package:flutter/material.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(FASizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Auth Email Header
                AuthTextHeader(
                  title: FATexts.authEmailTitle,
                  subTitle: FATexts.authEmailSubTitle,
                ),

                SizedBox(height: FASizes.spaceBtwSections),

                //--- Login Form
                FAAuthenticationForm(),

                // --- Divider
                SizedBox(height: FASizes.spaceBtwSections),
                FAFormDivider(divierText: FATexts.orSignInWith),
                SizedBox(height: FASizes.spaceBtwSections),

                // --- Social Button
                FASocialButton()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
