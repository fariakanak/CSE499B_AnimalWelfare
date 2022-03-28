import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';

import '../../constants.dart';

class PutAnimalsupforAdoption extends StatefulWidget {
  const PutAnimalsupforAdoption({Key? key}) : super(key: key);

  @override
  State<PutAnimalsupforAdoption> createState() =>
      _PutAnimalsupforAdoptionState();
}

class _PutAnimalsupforAdoptionState extends State<PutAnimalsupforAdoption> {
  String? selectedValue;
  List<String> items = [
    'Male',
    'Female',
  ];
  String? selectedValue2;
  List<String> items2 = ['0-1 Year', '1-7 Year', '7+ Year'];
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
                    'Put Animals up for Adoption',
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
                    labelText: "Animal's name",
                    hintText: "Enter the animal's name",
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
                      "Meeting Time",
                      style: TextStyle(
                        fontSize: 18,
                        // color: Colors.grey,
                      ),
                    ),
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
                            ? "Enter Preferred Meeting Time"
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
                  height: 30,
                ),
                Row(
                  children: const [
                    Text(
                      "Gender",
                      style: TextStyle(
                        fontSize: 18,
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
                          'Select Gender of the Animal',
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
                  height: 20,
                ),
                Row(
                  children: const [
                    Text(
                      "Age",
                      style: TextStyle(
                        fontSize: 18,
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
                          'Select Age of the Animal',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[400],
                              fontWeight: FontWeight.w600),
                        ),
                        items: items2
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
                        value: selectedValue2,
                        onChanged: (value) {
                          setState(
                            () {
                              selectedValue2 = value as String;
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
                // TextFormField(
                //   decoration: const InputDecoration(
                //     border: UnderlineInputBorder(),
                //     labelText: 'Age',
                //     hintText: "Enter the animal's age",
                //   ),
                // ),
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
                      'Put Animals up for Adoption',
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
