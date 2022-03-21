import 'package:flutter/material.dart';

class WelfareServicesHomeScreen extends StatefulWidget {
  const WelfareServicesHomeScreen({Key? key}) : super(key: key);

  @override
  State<WelfareServicesHomeScreen> createState() =>
      _WelfareServicesHomeScreenState();
}

class _WelfareServicesHomeScreenState extends State<WelfareServicesHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Text("Welfare")),
    );
  }
}
