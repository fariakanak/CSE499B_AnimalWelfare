import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:happy_tails/Screens/Sign%20In/sign_in_screen.dart';
import 'package:happy_tails/Screens/Sign%20Up/animal_welfare_organization_sign_up_screen.dart';
import 'package:happy_tails/Screens/Sign%20Up/individual_sign_up_screen.dart';
import 'package:happy_tails/Screens/Sign%20Up/veterinarian_sign_up_screen.dart';
import 'package:happy_tails/constants.dart';

class SignUPCategoryScreen extends StatefulWidget {
  const SignUPCategoryScreen({Key? key}) : super(key: key);

  @override
  State<SignUPCategoryScreen> createState() => _SignUPCategoryScreenState();
}

class _SignUPCategoryScreenState extends State<SignUPCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(),
            Text(
              "Register as a",
              style: TextStyle(
                fontSize: Theme.of(context).textTheme.headline4!.fontSize,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => const VeterinarianSignUpScreen());
              },
              child: categoryButton('VETERINARIAN'),
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => const AnimalWelfareOrganizationSignUpScreen());
              },
              child: categoryButton('ANIMAL WELFARE ORGANIZATION'),
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => const IndividualSignUpScreen());
              },
              child: categoryButton('NONE OF THE ABOVE'),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already registered?"),
                  TextButton(
                    onPressed: () {
                      Get.to(() => const SignInScreen());
                    },
                    child: const Text("Sign In"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding categoryButton(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 12.0),
      child: Container(
        decoration: const BoxDecoration(
          color: kPrimary,
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
