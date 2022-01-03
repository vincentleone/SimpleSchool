import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:simpleschool/widget/weekly_calendar_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class UserLoggedInWidget extends StatelessWidget {
  @override
  
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;

    try {
      CollectionReference users = FirebaseFirestore.instance.collection('users');
      var name = user.uid;
      var res = FirebaseFirestore.instance.doc('users/$name');
      if (res.id != null) {
        print('exists');
      } else {
        users.add({'id': name});
      }
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
