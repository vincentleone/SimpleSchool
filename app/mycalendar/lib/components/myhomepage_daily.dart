import 'package:flutter/material.dart';
import 'mycalendar_daily.dart';
import 'myclasses.dart';

class MyHomePageDaily extends StatelessWidget {
  const MyHomePageDaily({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Container(
          color: Colors.yellow,
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.95,
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
                          width: MediaQuery.of(context).size.height,
                          color: Colors.purple,
                          child: Column(
                            children: [
                              Text(
                                "User stats",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                ),
                              ),
                              Icon(Icons.circle_outlined, size: 70,),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 60,
                        child: Container(
                            width: MediaQuery.of(context).size.height,
                            color: Colors.deepPurple,
                            child: Text(
                              "User Classes",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            )),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 40,
                child: Container(
                  color: Colors.red,
                  height: MediaQuery.of(context).size.height,
                  child: Center(
                    child: const Text(
                      "Insert action card here",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 30,
                child: Container(
                  color: Colors.pink,
                  child: MyCalendarDaily(title: "Daily"),
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
        ),
      ],
    ));
  }
}
