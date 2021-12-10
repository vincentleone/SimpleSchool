import 'package:flutter/material.dart';
import 'mycalendar.dart';
import 'myclasses.dart';
import 'userclasses.dart';

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
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 40,
                      child: Container(
                        color: Colors.white,
                      ),
                    ),
                    Expanded(
                      flex: 60,
                      child: Container(
                        // decoration: BoxDecoration(
                        //     color: Colors.white,
                        //     border: Border(
                        //         // top: BorderSide(
                        //         //     color: Colors.lightBlueAccent, width: 1),
                        //         right: BorderSide(
                        //             width: 1, color: Colors.white10))),
                        color: Colors.white,
                        child: UserClasses(),
                      ),
                    )
                  ],
                )),
          ),
          Expanded(
            flex: 70,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1, color: Colors.grey)),
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
