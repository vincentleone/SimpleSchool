import 'package:flutter/material.dart';
import 'mydatepickerwidget.dart';
import 'my_time_picker_widget.dart';
import 'my_dropdown_widget.dart';

class MyCalendarEntryForm extends StatelessWidget {
  const MyCalendarEntryForm({Key? key, required this.startdate})
      : super(key: key);

  final startdate;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: true,
      title: Text('New Calendar Item'),
      content: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Item Name',
                  icon: Icon(Icons.event),
                ),
              ),
              MyDropDownWidget(),
              DatePickerWidget(),
              TimePickerWidget(),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Message',
                  icon: Icon(Icons.message),
                ),
              ),
            ],
          ),
        ),
      ),
      actions: [
        RaisedButton(
            child: Text("Submit"),
            onPressed: () {
              // your code
            }),
      ],
    );
  }
}
