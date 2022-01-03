import 'package:flutter/material.dart';
import 'dart:core';
import 'button_widget.dart';
import 'package:intl/intl.dart';

class TimePickerWidget extends StatefulWidget {
  @override
  _TimePickerWidgetState createState() => _TimePickerWidgetState();
}

class _TimePickerWidgetState extends State<TimePickerWidget> {
  TimeOfDay time = TimeOfDay.now();
  bool quickFix = true;

  String getText() {
    if (time == null || quickFix) {
      return 'Select Time';
    } else {
      final tmp = time.hour % 12;
      final tmp2 = time.hour / 12;
      final hours = tmp.toString().padLeft(2, '0');
      final minutes = time.minute.toString().padLeft(2, '0');

      if (time.hour < 12){
        return '$hours:$minutes am';
      } else {
        return '$hours:$minutes pm';
      }
      
    }
  }

  @override
  Widget build(BuildContext context) => ButtonHeaderWidget(
        title: 'Time',
        text: getText(),
        onClicked: () => pickTime(context),
      );

  Future pickTime(BuildContext context) async {
    final initialTime = TimeOfDay(hour: 9, minute: 0);
    final newTime = await showTimePicker(
      context: context,
      initialTime: initialTime,
    );

    if (newTime == null) return;

    setState(() => time = newTime);
    setState(() => quickFix = false);
  }
}
