import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:simpleschool/model/meeting.dart';
import 'package:simpleschool/widget/calendar_input_form.dart';
import 'package:simpleschool/widget/calendar_input_form_with_to.dart';
import 'package:simpleschool/widget/calendar_input_form_type_menu.dart';
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
  String entryType = "1";

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
      onTap: (CalendarTapDetails details) async {
        // print(details.date!);
        // print(details.appointments);
        // print(details.targetElement);
        //print("${user.displayName}\n${details.date}");
        await showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                scrollable: true,
                title: Text('Select an entry type'),
                content: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CalendarInputFormTypeMenu(
                      callback: (val) => setState(() => entryType = val)),
                ),
              );
            });
        //print(entryType);
        if (entryType == 'Assignment' ||
            entryType == 'Exam' ||
            entryType == 'Quiz') {
          await showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  scrollable: true,
                  content: Padding(
                      padding: const EdgeInsets.all(8),
                      // need to updte to accept class
                      child: CalendarInputForm(details, user, entryType)),
                );
              });
        } else if (entryType == 'Class') {
          await showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  scrollable: true,
                  content: Padding(
                      padding: const EdgeInsets.all(8),
                      // need to updte to accept class
                      child: CalendarInputFormWithTo(details, user, entryType)),
                );
              });
        }
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
