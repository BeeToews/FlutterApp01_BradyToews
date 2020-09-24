import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //first level widget of Material Design
      home: Scaffold(
        //default route
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text("Row and Column Widgets"),
          backgroundColor: Colors.blue,
        ),
        body: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                //Column 1
                children: <Widget>[
                  Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.orange,
                      border: Border.all(color: Colors.black, width: 3),
                    ),
                    child: Center(
                      child: Text(
                        'Container 1',
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: pi / 4,
                    child: Container(
                      height: 100.0,
                      width: 100.0,
                      color: Colors.white,
                      child: Center(
                        child: Text(
                          'Container 2',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 100.0,
                        width: 100.0,
                        color: Colors.yellow,
                        child: Align(
                          alignment: FractionalOffset.bottomCenter,
                          child: Text(
                            'Container 3',
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 100.0,
                        width: 100.0,
                        color: Colors.blue,
                        child: Align(
                          alignment: FractionalOffset.centerRight,
                          child: Text(
                            'Container 4',
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 100.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black,
                        border: Border.all(color: Colors.white, width: 3),
                      ),
                      child: Center(
                        child: Text(
                          'Container 5',
                          style: new TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 100.0,
                      width: 100.0,
                      color: Colors.red,
                      child: Text(
                        'Con 6',
                        style: new TextStyle(
                          fontSize: 30.0,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ]),
      ),
    );
  }
}
