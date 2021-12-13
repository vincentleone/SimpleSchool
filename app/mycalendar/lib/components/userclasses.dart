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
        return Material(
          // height: MediaQuery.of(context).size.height * 0.02,
          // width: MediaQuery.of(context).size.width,
          child: Row(
              //Align here
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Material(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: TextButton.icon(
                      icon: Icon(
                          isSelected[index]
                              ? Icons.circle
                              : Icons.circle_outlined,
                          color: Colors.lightBlue,
                          size: 12),
                      label: Text('${classList[index]}'),
                      style: TextButton.styleFrom(
                          primary: Colors.blueGrey,
                          onSurface: Colors.red,
                          padding: EdgeInsets.fromLTRB(2, 4, 8, 4),
                          textStyle: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold)),
                      onPressed: () => {
                        setState(() {
                          var tmp = !isSelected[index];
                          print("class $index $tmp");
                          isSelected[index] = tmp;
                        })
                      },
                    ),
                  ),
                ),
                Material(
                  color: Colors.white,
                  child: IconButton(
                      iconSize: 16,
                      onPressed: () {
                        print("Tickle me elmo $index");
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
