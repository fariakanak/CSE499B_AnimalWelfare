import 'package:flutter/material.dart';

class AdoptionHomeScreen extends StatefulWidget {
  const AdoptionHomeScreen({Key? key}) : super(key: key);

  @override
  State<AdoptionHomeScreen> createState() => _AdoptionHomeScreenState();
}

class _AdoptionHomeScreenState extends State<AdoptionHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Text("adoption")),
    );
  }
}
