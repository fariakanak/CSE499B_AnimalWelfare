import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:happy_tails/Screens/Sign%20In/sign_in_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:happy_tails/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // added GetMaterialApp for the getx state management system
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Happy Tails',
      // themedata added
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
        ),
        scaffoldBackgroundColor: Colors.white,
        primaryColor: kPrimary,
        textTheme: GoogleFonts.montserratTextTheme(
          Theme.of(context)
              .textTheme, // If this is not set, then ThemeData.light().textTheme is used.
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // this is the home screen of the app
      home: const SignInScreen(),
    );
  }
}
