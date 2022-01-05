import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:simpleschool/model/meeting.dart';
import 'dart:core';

//https://pub.dev/packages/flutter_form_builder
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:string_validator/string_validator.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class CalendarInputFormWithTo extends StatefulWidget {
  final CalendarTapDetails details;
  final User user;
  String type = '';

  CalendarInputFormWithTo(this.details, this.user, this.type);

  @override
  _CalendarInputFormWithTo createState() =>
      _CalendarInputFormWithTo(details, user, type);
}

class _CalendarInputFormWithTo extends State<CalendarInputFormWithTo> {
  final CalendarTapDetails details;
  User user;
  String type = '';
  _CalendarInputFormWithTo(this.details, this.user, this.type);

  String eventName = '';
  Map<String, String> classId = {'': ''};
  DateTime? date;
  DateTime? from;
  DateTime? to;

  DateTime currentDate = DateTime.now();

  final _formKey1 = GlobalKey<FormBuilderState>();

  bool _validateForm(Map<String, dynamic> form) {
    //print("Validator");
    print(form);
    var eName = form['eventName'];
    if (!isAlphanumeric(eName) && eName != '') {
      print("Error eventName not alphanumeric or is empty");
      return false;
    }

    // TODO
    // var classInfo = form['classId'];
    // if ()

    var eventDate = form['date'];
    if (!isDate(eventDate.toString()) && eventDate != null) {
      print("Error: Not a date or null");
      return false;
    } else if (isAfter(eventDate.toString(), DateTime.now().toString())) {
      print("Error: Entered time has already passed");
      return false;
    }

    var fromTime = form['from'];
    if (!isDate(fromTime.toString()) && fromTime != null) {
      print("Error: Not a DateTime or null");
      return false;
    }

    var toTime = form['to'];
    if (!isDate(fromTime.toString()) && fromTime != null) {
      print("Error: Not a DateTime or null");
      return false;
    } else if (!isAfter(toTime.toString(), fromTime.toString())) {
      print("Error: to time must be after from time");
      return false;
    }

    return true;
  }

  @override
  Widget build(BuildContext content) {
    // CollectionReference users = FirebaseFirestore.instance.collection('users');
    // CollectionReference events =
    //     FirebaseFirestore.instance.collection('events');

    var initialDateTime = details.date;
    print(initialDateTime);
    return Column(
      children: <Widget>[
        FormBuilder(
          key: _formKey1,
          child: Column(
            children: <Widget>[
              FormBuilderTextField(
                enableInteractiveSelection: true,
                name: 'eventName',
                decoration: InputDecoration(
                  labelText: 'Enter Title',
                ),
                onChanged: (text) {},
                // valueTransformer: (text) => num.tryParse(text),
              ),
              FormBuilderTextField(
                name: 'type',
                decoration: InputDecoration(
                  labelText: "Event Type",
                ),
                initialValue: type,
                enabled: false,
              ),
              FormBuilderDateTimePicker(
                name: 'date',
                // onChanged: _onChanged,
                inputType: InputType.date,
                decoration: InputDecoration(
                  labelText: 'Enter Date',
                ),
                initialTime: TimeOfDay(hour: 8, minute: 0),
                // initialValue: DateTime.now(),
                // enabled: true,
              ),
              FormBuilderDateTimePicker(
                name: 'from',
                // onChanged: _onChanged,
                format: DateFormat.jm(),
                inputType: InputType.time,
                decoration: InputDecoration(
                  labelText: 'From Time',
                ),
                initialTime: TimeOfDay(hour: 8, minute: 0),
                // initialValue: DateTime.now(),
                // enabled: true,
              ),
              FormBuilderDateTimePicker(
                name: 'to',
                // onChanged: _onChanged,
                format: DateFormat.jm(),
                inputType: InputType.time,
                decoration: InputDecoration(
                  labelText: 'To Time',
                ),
                initialTime: TimeOfDay(hour: 8, minute: 0),
                // initialValue: DateTime.now(),
                // enabled: true,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: MaterialButton(
                      color: Theme.of(context).colorScheme.secondary,
                      child: Text(
                        "Submit",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        Map tmp;
                        _formKey1.currentState!.save();
                        // TODO make validator for formKey1
                        if (_validateForm(_formKey1.currentState!.value)) {
                          tmp = _formKey1.currentState!.value;

                          print(tmp);
                          Navigator.pop(context);
                        } else {
                          print("validation failed");
                          Navigator.pop(context);
                        }
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
