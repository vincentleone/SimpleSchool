import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import './object/meeting.dart';
import 'mycalendarentryform.dart';

class MyCalendar extends StatefulWidget {
  const MyCalendar({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyCalendar> createState() => _MyCalendar();
}

class _MyCalendar extends State<MyCalendar> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SfCalendar(
          view: CalendarView.week,
          allowAppointmentResize: true,
          dataSource: MeetingDataSource(_getDataSource()),
          timeSlotViewSettings: TimeSlotViewSettings(
            timeIntervalWidth: 100,
          ),
          onTap: (CalendarTapDetails details) {
            print(details.date!);
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return MyCalendarEntryForm(startdate: details.date!);
                });
          }),
    );
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
