import 'package:flutter/material.dart';

class LeftSideBar extends StatelessWidget {
  const LeftSideBar({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      Expanded(
        flex: 15,
        child: Container(
        color: Colors.lightBlue[400],
        ),
      ),
    );
}
