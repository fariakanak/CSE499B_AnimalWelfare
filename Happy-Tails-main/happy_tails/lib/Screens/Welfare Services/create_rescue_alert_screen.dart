import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:happy_tails/constants.dart';
import 'package:intl/intl.dart';

class CreateRescueAlertScreen extends StatefulWidget {
  const CreateRescueAlertScreen({Key? key}) : super(key: key);

  @override
  State<CreateRescueAlertScreen> createState() =>
      _CreateRescueAlertScreenState();
}

class _CreateRescueAlertScreenState extends State<CreateRescueAlertScreen> {
  String? selectedValue;
  List<String> items = [
    'Obhoyaronno',
    'Animal Lovers of Bangladesh',
    'Care for Paws',
    'PAW Foundation',
    'Rise for Paws',
    'Robinhood: The Animal Rescuer',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.00),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 12,
                ),
                Center(
                  child: Text(
                    'Create Rescue Alert',
                    style: TextStyle(
                      fontSize: Theme.of(context).textTheme.headline4!.fontSize,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: "Your name",
                    hintText: "Enter your name",
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Contact No',
                    hintText: 'Enter your Contact No',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Address',
                    hintText: 'Enter your address',
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: const [
                    Text(
                      "Select Your Preferred Welfare Organization",
                      style: TextStyle(
                        fontSize: 16,
                        // color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    DropdownButtonHideUnderline(
                      child: DropdownButton2(
                        hint: Text(
                          'Select Organization',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[400],
                              fontWeight: FontWeight.w600),
                        ),
                        items: items
                            .map((item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: const TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ))
                            .toList(),
                        value: selectedValue,
                        onChanged: (value) {
                          setState(
                            () {
                              selectedValue = value as String;
                            },
                          );
                        },
                        buttonHeight: 40,
                        // buttonWidth: ,
                        itemHeight: 40,
                      ),
                    ),
                  ],
                ),
                Divider(
                  color: Theme.of(context).hintColor,
                  thickness: 0.8,
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: kPrimary,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(40.0),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Make a Rescue Alert',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
