import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:happy_tails/Screens/Adoption/put_animals_up_for_adoption_form.dart';

import '../../constants.dart';
import '../Animal Healthcare/call_a_veterinarian_home_form_screen.dart';
import '../Animal Healthcare/create_appointment_form_screen.dart';

class AdoptionHomeScreen extends StatefulWidget {
  const AdoptionHomeScreen({Key? key}) : super(key: key);

  @override
  State<AdoptionHomeScreen> createState() => _AdoptionHomeScreenState();
}

class _AdoptionHomeScreenState extends State<AdoptionHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('Assets/Images/healthcare.png'),
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
                "Help us in the noble cause of",
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'giving the animals a',
                style: TextStyle(fontSize: 25.0, color: Colors.white),
              ),
              const Text(
                'loving forever home.',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
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
                          height: 300,
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
                                  'Browse to Adopt',
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
                                    "You can browse all the veterinarians that are registered in Happy Tails and offer their service through our system",
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
                          Get.to(() => const PutAnimalsupforAdoption());
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
                            height: 300,
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                children: [
                                  Container(
                                    child: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Image.asset(
                                        'Assets/Images/forever-home.png',
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
                                    'Put Animal up for Adoption',
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
                                      "You can create appointments with your preferred veterinarians at your preferred time through Happy Tails.",
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
