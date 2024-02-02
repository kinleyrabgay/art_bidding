import 'package:bidding_app/features/authentication/screen/login/widgets/input_field.dart';
import 'package:bidding_app/features/authentication/screen/widgets/auth_text_header.dart';
import 'package:bidding_app/utils/constants/sizes.dart';
import 'package:bidding_app/utils/constants/text.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
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

              // Email
              FAInputField(),
            ],
          ),
        ),
      ),
    );
  }
}
