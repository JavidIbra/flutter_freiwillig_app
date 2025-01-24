import 'package:flutter/material.dart';
import 'package:flutter_freiwillig_app/utils/constants/sizes.dart';
import 'package:flutter_freiwillig_app/utils/constants/text_string.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text(
                CTexts.signUpTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              const SizedBox(height: CSizes.spaceBtwSections),

              /// Form
              // const CSignupForm(),
              // const SizedBox(height: CSizes.spaceBtwSections),

              // /// Divider
              // const CFormDivider(dividertext: CTexts.orSignUpWith),
              // const SizedBox(height: CSizes.spaceBtwSections),

              // ///Social Buttons

              // const SocialButtons(),
              // const SizedBox(height: CSizes.spaceBtwSections),
            ],
          ),
        ),
      ),
    );
  }
}
