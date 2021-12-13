import 'dart:html';

import 'package:flutter/material.dart';

class UserClasses extends StatefulWidget {
  @override
  _UserClassesState createState() => _UserClassesState();
}

class _UserClassesState extends State<UserClasses> {
  // Assume DB Call here
  final _style = TextStyle(fontSize: 40.0, color: Colors.blueGrey);
  final List<String> classList = <String>[
    "Calc1",
    "Calc2",
    "Calc3",
    "Automata",
    "Parallel Computing",
    "Network Science"
  ];
  final colors = [Colors.blue, Colors.lightBlue];

  final isSelected = <bool>[];

  Widget _buildClassList() {
    return ListView.separated(
      padding: const EdgeInsets.all(2),
      itemCount: classList.length,
      itemBuilder: (BuildContext context, int index) {
        isSelected.add(false);
        return Container(
          // height: MediaQuery.of(context).size.height * 0.02,
          width: MediaQuery.of(context).size.width,
          child: Row(
            //Align here
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
            TextButton.icon(
              icon: Icon(
                  isSelected[index] ? Icons.circle : Icons.circle_outlined,
                  color: Colors.lightBlue,
                  size: 14),
              label: Text('${classList[index]}',
                  style: TextStyle(color: Colors.black)),
              style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  padding: EdgeInsets.fromLTRB(16, 4, 8, 4),
                  textStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              onPressed: () => {
                setState(() {
                  isSelected[index] = !isSelected[index];
                })
              },
            ),
            Material(
              color: Colors.white,
              child: IconButton(
                  iconSize: 16,
                  onPressed: () {
                    print("Tickle me elmo");
                  },
                  icon: Icon(Icons.menu)),
            )
          ]),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: _buildClassList(),
    );
  }
}
