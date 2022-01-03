import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:simpleschool/model/meeting.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UpdateCalendar extends StatelessWidget {
  final CalendarTapDetails details;
  User user;

  UpdateCalendar(this.details, this.user);

  @override
  String readMeetings() {
    var userId = user.uid;
    CollectionReference meetings =
        FirebaseFirestore.instance.collection('users/$userId/meetings');
    var temp = meetings.get();
    if (temp == null) {
      return 'failed';
    } else {
      return temp.toString();
    }
  }

  Widget build(BuildContext context) {
    CollectionReference users =
        FirebaseFirestore.instance.collection('users');

    return FutureBuilder<DocumentSnapshot>(
      future: users.doc(user.uid).get(),
      builder: 
        (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
        if (snapshot.hasError){
          return Text('Something went wrong');
        }
        if (snapshot.hasData && !snapshot.data!.exists) {
          return Text('Document does not exist');
        }
        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data = snapshot.data!.data() as Map<String, dynamic>;
          return Text("eventName: ${data['eventName']}"); 
        }
        
        return Text('loading...');
      },
      );
  }
}
