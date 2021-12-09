import 'package:flutter/material.dart';
import 'mycalendar.dart';
import 'myclasses.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Row(
        children: <Widget>[
          // Left Sidebar 
          Expanded(
            flex: 15,
            child: Container(
              color: Colors.lightBlue[400],
            ),
          ),
          Expanded(
            flex: 70,
            child: Container(
              color: Colors.red,
              child: MyCalendar(
                title: "Test",
              ),
            ),
          ),
          Expanded(
            flex: 15,
            child: Container(
              color: Colors.blueGrey,
            ),
          ),
        ],
      ),
    );
  }
}
