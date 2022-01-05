import 'dart:html';

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:simpleschool/widget/weekly_calendar_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserLoggedInWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;

    try {
      CollectionReference users =
          FirebaseFirestore.instance.collection('users');
      var name = user.uid;
      print(name);
      var res = FirebaseFirestore.instance
        ..collection('users').doc('${name}').update({'first_login': false});
      print(res);
    } catch (err) {
      print(err);
    }

    return Row(children: [
      Expanded(
        flex: 15,
        child: Container(
          color: Colors.blue.shade100,
          alignment: Alignment.center,
          child: Column(children: [
            SizedBox(
              height: 5,
            ),
            CircleAvatar(
              minRadius: 5,
              maxRadius: 42,
              backgroundImage: NetworkImage(user.photoURL!),
            ),
            SizedBox(
              height: 8,
            ),
            Text(user.displayName!),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Classes",
                    style: TextStyle(
                        fontSize: 16,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    color: Colors.grey.shade800,
                    padding: EdgeInsets.all(0),
                    hoverColor: Colors.blue,
                    iconSize: 22,
                    icon: Icon(Icons.add),
                    onPressed: () {
                      print("add class");
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              scrollable: true,
                              content: Padding(
                                padding: const EdgeInsets.all(8),
                                // need to updte to accept class
                                child: Text("test"),
                              ),
                            );
                          });
                    },
                  ),
                ],
              ),
            ),
            Container(
              height: 0.5,
              color: Colors.blueGrey,
              margin: EdgeInsets.fromLTRB(8, 0, 8, 0),
            ),
            SizedBox(
              height: 5,
            ),
            Expanded(
              flex: 80,
              child: Column(
                children: [Text("test"), Text("test"), Text("test")],
              ),
            ),
          ]),
        ),
      ),
      Expanded(flex: 70, child: MyCalendar(title: "test", user: user)),
      Expanded(
        flex: 15,
        child: Container(
            color: Colors.grey,
            child: Center(
              child: ElevatedButton(
                child: Text("Press me"),
                onPressed: () {
                  // todo
                },
              ),
            )),
      )
    ]);
  }
}
