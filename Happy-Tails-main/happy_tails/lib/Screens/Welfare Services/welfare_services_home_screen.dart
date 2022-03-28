import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:happy_tails/Screens/Welfare%20Services/area_wide_spay_neuter_program_screen.dart';
import 'package:happy_tails/Screens/Welfare%20Services/area_wide_vaccination_program_screen.dart';
import 'package:happy_tails/Screens/Welfare%20Services/create_rescue_alert_screen.dart';

import '../../constants.dart';

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
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('Assets/Images/welfare.png'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black12, BlendMode.darken),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Request for the services",
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  text: 'offered by',
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                  ),
                  children: <TextSpan>[
                    // TextSpan(text: '\n offered by'),
                    TextSpan(
                        text: ' animal welfare',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: ' organization',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: ' through Happy'),
                    TextSpan(text: '\nTails from below'),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                        ),
                        elevation: 50,
                        // shadowColor: Colors.black,
                        color: Colors.white,
                        child: SizedBox(
                          width: 300,
                          height: 320,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Image.asset(
                                      'Assets/Images/browse.png',
                                    ),
                                  ),
                                  decoration: const BoxDecoration(
                                    color: kPrimary,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                // CircleAvatar(
                                //   backgroundColor: kPrimary,
                                //   radius: 40,
                                //   foregroundImage: AssetImage(
                                //       'Assets/Images/veterinarians.png'),
                                // ),
                                const SizedBox(
                                  height: 10,
                                ), //SizedBox
                                const Text(
                                  'Browse Registered \n Organizations',
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: kSecondary,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center, //Textstyle
                                ), //Text
                                const SizedBox(
                                  height: 10,
                                ), //SizedBox
                                const Center(
                                  child: Text(
                                    "Browse all the animal welfare organizations that are registered in Happy Tails and offer their service through our system.",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w100,
                                      color: kSecondary,
                                    ),
                                    textAlign: TextAlign.center, //Textstyle
                                  ),
                                ), //Text
                              ],
                            ), //Column
                          ), //Padding
                        ), //SizedBox
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Get.to(() => const CreateRescueAlertScreen());
                        },
                        child: Card(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(12.0),
                            ),
                          ),
                          elevation: 50,
                          // shadowColor: Colors.black,
                          color: Colors.white,
                          child: SizedBox(
                            width: 300,
                            height: 320,
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                children: [
                                  Container(
                                    child: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Image.asset(
                                        'Assets/Images/alert.png',
                                      ),
                                    ),
                                    decoration: const BoxDecoration(
                                      color: kPrimary,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  // CircleAvatar(
                                  //   backgroundColor: kPrimary,
                                  //   radius: 40,
                                  //   foregroundImage: AssetImage(
                                  //       'Assets/Images/veterinarians.png'),
                                  // ),
                                  const SizedBox(
                                    height: 10,
                                  ), //SizedBox
                                  const Text(
                                    'Create a Rescue Alert',
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: kSecondary,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center, //Textstyle
                                  ), //Text
                                  const SizedBox(
                                    height: 10,
                                  ), //SizedBox
                                  const Center(
                                    child: Text(
                                      "Spotted an animal that needs rescuing? Make a request for it to be rescued through this portal. Our registered animal welfare organizations will volunteer for the job!",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w100,
                                        color: kSecondary,
                                      ),
                                      textAlign: TextAlign.center, //Textstyle
                                    ),
                                  ), //Text
                                ],
                              ), //Column
                            ), //Padding
                          ), //SizedBox
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Get.to(
                              () => const AreaWideVaccinationProgramScreen());
                        },
                        child: Card(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(12.0),
                            ),
                          ),
                          elevation: 50,
                          // shadowColor: Colors.black,
                          color: Colors.white,
                          child: SizedBox(
                            width: 300,
                            height: 320,
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                children: [
                                  Container(
                                    child: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Image.asset(
                                        'Assets/Images/vaccination.png',
                                      ),
                                    ),
                                    decoration: const BoxDecoration(
                                      color: kPrimary,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  // CircleAvatar(
                                  //   backgroundColor: kPrimary,
                                  //   radius: 40,
                                  //   foregroundImage: AssetImage(
                                  //       'Assets/Images/veterinarians.png'),
                                  // ),
                                  const SizedBox(
                                    height: 10,
                                  ), //SizedBox
                                  const Text(
                                    'Request Area-wide Vaccination Program',
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: kSecondary,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center, //Textstyle
                                  ), //Text
                                  const SizedBox(
                                    height: 10,
                                  ), //SizedBox
                                  const Center(
                                    child: Text(
                                      "Wanna create a safe neighborhood for all the people and the animals? Request for area-wide vaccination here.",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w100,
                                        color: kSecondary,
                                      ),
                                      textAlign: TextAlign.center, //Textstyle
                                    ),
                                  ), //Text
                                ],
                              ), //Column
                            ), //Padding
                          ), //SizedBox
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Get.to(() => const AreaWideSpayNeuterProgramScreen());
                        },
                        child: Card(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(12.0),
                            ),
                          ),
                          elevation: 50,
                          // shadowColor: Colors.black,
                          color: Colors.white,
                          child: SizedBox(
                            width: 300,
                            height: 320,
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                children: [
                                  Container(
                                    child: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Image.asset(
                                        'Assets/Images/spay.png',
                                      ),
                                    ),
                                    decoration: const BoxDecoration(
                                      color: kPrimary,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  // CircleAvatar(
                                  //   backgroundColor: kPrimary,
                                  //   radius: 40,
                                  //   foregroundImage: AssetImage(
                                  //       'Assets/Images/veterinarians.png'),
                                  // ),
                                  const SizedBox(
                                    height: 10,
                                  ), //SizedBox
                                  const Text(
                                    'Request Area-wide Spay/Neuter Program',
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: kSecondary,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center, //Textstyle
                                  ), //Text
                                  const SizedBox(
                                    height: 10,
                                  ), //SizedBox
                                  const Center(
                                    child: Text(
                                      "Request for area-wide spay/vaccination for all the cats & dogs to keep the population at bay.",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w100,
                                        color: kSecondary,
                                      ),
                                      textAlign: TextAlign.center, //Textstyle
                                    ),
                                  ), //Text
                                ],
                              ), //Column
                            ), //Padding
                          ), //SizedBox
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
