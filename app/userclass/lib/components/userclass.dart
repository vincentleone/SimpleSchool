import 'package:flutter/material.dart';

class UserClass extends StatelessWidget {
  static const _biggerFont = TextStyle(fontSize: 40.0,color: Color.blueGrey);
  @override
  //State<UserClass> createState() => _UserClass();

  const classList = <Widget> [];
  const listTile = (title: Text(style: _biggerFont,));

  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: const [
          Text("Automata", style: _biggerFont),
          Text("Senior Design"),
          Text("Data Security"),
        ],
      )
    );
  }
}