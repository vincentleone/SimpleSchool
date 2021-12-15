import 'package:flutter/material.dart';

class MyUserStats extends StatelessWidget {
  const MyUserStats({Key? key}) : super(key: key);

  final _image =
      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Spacer(flex: 5),
          Expanded(
            flex: 30,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.yellow,
                image: new DecorationImage(
                    fit: BoxFit.fitHeight, image: new NetworkImage(_image)),
              ),
            ),
          ),
          Expanded(
            flex: 70,
            child: Text("Holder"),
          ),
        ],
      ),
    );
  }
}
