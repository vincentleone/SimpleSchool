import 'package:flutter/material.dart';
import 'mycalendar.dart';
import 'myclasses.dart';
import 'userclasses.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Material(
      //height: MediaQuery.of(context).size.height,
      child: Row(
        children: <Widget>[
          // Left Sidebar
          Expanded(
            flex: 15,
            child: Material(
                //color: Colors.lightBlue[400],
                child: Column(
              children: <Widget>[
                Expanded(
                  flex: 40,
                  child: Material(
                      //decoration: BoxDecoration(color: Colors.white),
                      // color: Colors.wh
                      ),
                ),
                Expanded(
                  flex: 60,
                  child: Column(children: <Widget>[
                    Expanded(
                      flex: 5,
                      child: Material(
                        //width: MediaQuery.of(context).size.width,
                        //decoration: BoxDecoration(
                        //  color: Colors.white,
                        //border:
                        //  Border(bottom: BorderSide(color: Colors.grey))),
                        child: Material(
                          child: Center(
                            child: Text(
                              "Your Classes",
                              style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.normal),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 95,
                        child: Material(
                          //color: Colors.white,
                          child: UserClasses(),
                        )
                        // decoration: BoxDecoration(
                        //     color: Colors.white,
                        //     border: Border(
                        //         // top: BorderSide(
                        //         //     color: Colors.lightBlueAccent, width: 1),
                        //         right: BorderSide(
                        //             width: 1, color: Colors.white10))),
                        //color: Colors.white
                        )
                  ]),
                )
              ],
            )),
          ),
          Expanded(
            flex: 70,
            child: Container(
              decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 0.5, color: Colors.grey)),
              child: Material(
                child: MyCalendar(
                  title: "Test",
                ),
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
