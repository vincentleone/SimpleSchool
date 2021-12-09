import 'package:flutter/material.dart';
import 'dart:math';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'components/mycalendar.dart';
import 'components/myhomepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}
