import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:simpleschool/model/meeting.dart';
import 'package:simpleschool/widget/calendar_update_view.dart';
import 'package:firebase_auth/firebase_auth.dart';

class MyCalendar extends StatefulWidget {
  const MyCalendar({Key? key, required this.title, required this.user})
      : super(key: key);

  final String title;
  final User user;

  @override
  State<MyCalendar> createState() => _MyCalendar(user);
}

class _MyCalendar extends State<MyCalendar> {
  final User user;

  _MyCalendar(this.user);
  @override
  Widget build(BuildContext context) {
    // user = FirebaseAuth.instance.currentUser!;

    return Scaffold(
        body: SfCalendar(
      view: CalendarView.week,
      showDatePickerButton: true,
      allowAppointmentResize: true,
      showCurrentTimeIndicator: true,
      monthViewSettings: MonthViewSettings(showAgenda: true),
      dataSource: MeetingDataSource(_getDataSource()),
      timeSlotViewSettings: TimeSlotViewSettings(
        timeIntervalWidth: 100,
      ),
      onTap: (CalendarTapDetails details) {
        // print(details.date!);
        // print(details.appointments);
        // print(details.targetElement);
        print("${user.displayName}\n${details.date}");
       
      },
    ));
  }
}

List<Meeting> _getDataSource() {
  final List<Meeting> meetings = <Meeting>[];

  final DateTime today = DateTime.now();
  DateTime startTime = DateTime(today.year, today.month, today.day, 9, 0, 0);
  DateTime endTime = startTime.add(const Duration(hours: 2));
  meetings.add(Meeting(
      'Conference', startTime, endTime, const Color(0xFF0F8644), false));

  startTime = DateTime(today.year, today.month, today.day - 1, 12, 0, 0);
  endTime = startTime.add(const Duration(hours: 1));
  meetings
      .add(Meeting('Doctors', startTime, endTime, randomOpaqueColor(), false));

  startTime = DateTime(today.year, today.month, today.day + 2, 14, 0, 0);
  endTime = startTime.add(const Duration(hours: 1));
  meetings
      .add(Meeting('Doctors', startTime, endTime, randomOpaqueColor(), false));

  startTime = DateTime(today.year, today.month, today.day + 4, 15, 0, 0);
  endTime = startTime.add(const Duration(hours: 1));
  meetings
      .add(Meeting('Doctors', startTime, endTime, randomOpaqueColor(), false));

  return meetings;
}
