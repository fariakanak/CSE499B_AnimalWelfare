import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:happy_tails/Screens/Adoption/adoption_home_screen.dart';
import 'package:happy_tails/Screens/Animal%20Healthcare/animal_healthcare_home_screen.dart';
import 'package:happy_tails/Screens/Sign%20Up/sign_up_category_screen.dart';
import 'package:happy_tails/Screens/Welfare%20Services/welfare_services_home_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import '../../constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> _buildScreens() {
    return [
      homeScreen(),
      const AnimalHealthcareHomeScreen(),
      const WelfareServicesHomeScreen(),
      const AdoptionHomeScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.home),
        title: ("Home"),
        activeColorPrimary: kPrimary,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const FaIcon(FontAwesomeIcons.medkit),
        title: ("Healthcare"),
        activeColorPrimary: kPrimary,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const FaIcon(FontAwesomeIcons.dove),
        title: ("Welfare"),
        activeColorPrimary: kPrimary,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.heart_circle_fill),
        title: ("Adoption"),
        activeColorPrimary: kPrimary,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }

  PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);
  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.grey.shade200, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style1, // Choose the nav bar style with this property.
    );
  }

  Scaffold homeScreen() {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('Assets/Images/home.png'),
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
              RichText(
                text: const TextSpan(
                  text: 'Connecting all ',
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'animal lovers',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: '\nand spreading the strength of'),
                    // TextSpan(
                    //   text: '\n love & kindness',
                    //   style: TextStyle(
                    //       fontWeight: FontWeight.bold,
                    //       fontSize: 25.0,
                    //       color: Colors.white),
                    // ),
                  ],
                ),
              ),
              const Text(
                'love & kindness',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 25,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => const SignUPCategoryScreen());
                },
                child: const Text(
                  'Sign up & sign in to help this noble cause!',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                      color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: kPrimary,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'About US',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
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
                          width: 250,
                          height: 300,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Image.asset(
                                      'Assets/Images/veterinarians.png',
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
                                  'Veterinarians',
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: kSecondary,
                                    fontWeight: FontWeight.bold,
                                  ), //Textstyle
                                ), //Text
                                const SizedBox(
                                  height: 10,
                                ), //SizedBox
                                const Center(
                                  child: Text(
                                    "will attend appointments and diagnose your pet's health issues. General users can request home appointments if necessary",
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
                          width: 250,
                          height: 300,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Image.asset(
                                      'Assets/Images/animal welfare organizations.png',
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
                                  'Animal Welfare \n Organizations',
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: kSecondary,
                                    fontWeight: FontWeight.bold,
                                  ), //Textstyle
                                ), //Text
                                const SizedBox(
                                  height: 10,
                                ), //SizedBox
                                const Center(
                                  child: Text(
                                    "will conduct area-wide vaccination & population control programs as well as rescue animals in need as per request",
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
                          width: 250,
                          height: 300,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Image.asset(
                                      'Assets/Images/general users.png',
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
                                  'General Users',
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: kSecondary,
                                    fontWeight: FontWeight.bold,
                                  ), //Textstyle
                                ), //Text
                                const SizedBox(
                                  height: 10,
                                ), //SizedBox
                                const Center(
                                  child: Text(
                                    "will take the services offered by veterinarians and welfare organizations as well as put animals up for adoption",
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
