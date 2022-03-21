import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';

import 'package:dropdown_button2/dropdown_button2.dart';

import '../../constants.dart';

class CreateAppoinmentForm extends StatefulWidget {
  const CreateAppoinmentForm({Key? key}) : super(key: key);

  @override
  State<CreateAppoinmentForm> createState() => _CreateAppoinmentFormState();
}

class _CreateAppoinmentFormState extends State<CreateAppoinmentForm> {
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 12,
              ),
              Text(
                ' Create Appointment',
                style: TextStyle(
                  fontSize: Theme.of(context).textTheme.headline4!.fontSize,
                  fontWeight: FontWeight.w700,
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
                        maxTime: DateTime.now().add(const Duration(days: 1825)),
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
                        setState(() {
                          selectedValue = value as String;
                        });
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
                    'Request for Online Appointment',
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
    );
  }
}
