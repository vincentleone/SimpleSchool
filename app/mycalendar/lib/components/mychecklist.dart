import 'dart:html';

import 'package:flutter/material.dart';

class MyCheckList extends StatefulWidget {
  @override
  _MyCheckList createState() => _MyCheckList();
}

class _MyCheckList extends State<MyCheckList> {
  // Assume DB Call here
  final _style = TextStyle(fontSize: 40.0, color: Colors.blueGrey);
  final List<String> classList = <String>[
    "Assignment Calc 1",
    "Assignment Calc 2",
    "Assignment Calc 3",
    "Exam Automata",
    "Project Parallel Computing",
    "Assignment Network Science"
  ];

  final isSelected = <bool>[];

  Widget _buildItemList() {
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
                Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: TextButton.icon(
                      icon: Icon(
                          isSelected[index]
                              ? Icons.circle
                              : Icons.circle_outlined,
                          color: Colors.lightBlue,
                          size: 12),
                      label: Text('${classList[index]}',
                          overflow: TextOverflow.clip),
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
              ]),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // height: MediaQuery.of(context).size.height,
      //width: MediaQuery.of(context).size.width,
      child: _buildItemList(),
    );
  }
}
