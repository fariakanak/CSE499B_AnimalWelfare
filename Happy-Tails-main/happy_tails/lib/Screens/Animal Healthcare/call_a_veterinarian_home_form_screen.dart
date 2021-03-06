import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';

import '../../constants.dart';

class CallAVeterinarianHome extends StatefulWidget {
  const CallAVeterinarianHome({Key? key}) : super(key: key);

  @override
  State<CallAVeterinarianHome> createState() => _CallAVeterinarianHomeState();
}

class _CallAVeterinarianHomeState extends State<CallAVeterinarianHome> {
  String? selectedValue;
  List<String> items = [
    'Dr. Mohammad Mamunur Rashid',
    'Dr. Arifur Rabbi',
    'Vet Dr. Sagir Uddin Ahmed',
    'Dr. Md. Mahbubul Alam Bhuiyan',
  ];
  DateTime? selectedDate;

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
                    'Call A Veterinarian',
                    style: TextStyle(
                      fontSize: Theme.of(context).textTheme.headline4!.fontSize,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    'Home',
                    style: TextStyle(
                      fontSize: Theme.of(context).textTheme.headline4!.fontSize,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Your name',
                    hintText: 'Enter your name',
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
                  height: 20,
                ),
                Row(
                  children: const [
                    Text("Appointment Time"),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () async {
                        DatePicker.showDateTimePicker(
                          context,
                          showTitleActions: true,
                          minTime: DateTime.now(),
                          maxTime:
                              DateTime.now().add(const Duration(days: 1825)),
                          onChanged: (date) {
                            setState(() {
                              selectedDate = date;
                            });
                          },
                          currentTime: DateTime.now(),
                        );
                      },
                      child: Text(
                        selectedDate == null
                            ? "Enter Preferred Appointment Time"
                            : DateFormat.yMd().add_jm().format(selectedDate!),
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[400],
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
                Divider(
                  color: Theme.of(context).hintColor,
                  thickness: 0.8,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: const [
                    Text("Select Your Doctor"),
                  ],
                ),
                Row(
                  children: [
                    DropdownButtonHideUnderline(
                      child: DropdownButton2(
                        hint: Text(
                          'Select Doctor',
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
                      'Request for Home Appointment',
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
