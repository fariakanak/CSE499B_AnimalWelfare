import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:happy_tails/Screens/Animal%20Healthcare/call_a_veterinarian_home_form_screen.dart';
import 'package:happy_tails/Screens/Animal%20Healthcare/create_appointment_form_screen.dart';

import '../../constants.dart';

class AnimalHealthcareHomeScreen extends StatefulWidget {
  const AnimalHealthcareHomeScreen({Key? key}) : super(key: key);

  @override
  State<AnimalHealthcareHomeScreen> createState() =>
      _AnimalHealthcareHomeScreenState();
}

class _AnimalHealthcareHomeScreenState
    extends State<AnimalHealthcareHomeScreen> {
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
                "A united platform",
                style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                'for animal owners and animal',
                style: TextStyle(fontSize: 25.0, color: Colors.white),
              ),
              const Text(
                'healthcare providers.',
                style: TextStyle(fontSize: 25.0, color: Colors.white),
              ),
              const SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
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
                                  'Discover \n Veterinarians',
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
                                    "You can browse all the veterinarians that are registered in Happy Tails and offer their service through our system.",
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
                          Get.to(() => const CreateAppoinmentForm());
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
                                        'Assets/Images/appointment.png',
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
                                    'Create an \n Appointment ',
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
                                      "You can create appointments with your preferred veterinarians at your preferred time through Happy Tails",
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
                          Get.to(() => const CallAVeterinarianHome());
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
                                        'Assets/Images/home2.png',
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
                                    'Call a Veterinarian Home',
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
                                      "Create an appointment with your preferred doctor who will be visiting and treating your precious animal.",
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
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
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
                                      'Assets/Images/video-call.png',
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
                                  'Attend Appointment',
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
                                    "Once your preferred veterinarian accepts your appointment request, you can use your appointment ID to attend it via video call.",
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
                                      'Assets/Images/prescription.png',
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
                                  'Prescriptions',
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
                                    "Here you can access all the prescriptions your veterinarians have written for your beloved pet through Happy Tails.",
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
                                      'Assets/Images/locate.png',
                                    ),
                                  ),
                                  decoration: const BoxDecoration(
                                    color: kPrimary,
                                    shape: BoxShape.circle,
                                  ),
                                ),

                                const SizedBox(
                                  height: 10,
                                ), //SizedBox
                                const Text(
                                  'Locate a Veterinarian',
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
                                    "Need an emergency visit to a vet? Insert the veterinarian's provided address from our list & locate the clinic right here!",
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
