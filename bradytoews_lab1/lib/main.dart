import 'package:flutter/material.dart';

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
            //mainAxisAlignment: MainAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.end,
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            //crossAxisAlignment: CrossAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                //Column 1
                children: <Widget>[
                  Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.orange,
                    child: Center(
                      child: Text(
                        'Container 1',
                      ),
                    ),
                  ),
                  Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.white,
                    child: Text(
                      'Container 2',
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      height: 100.0,
                      width: 100.0,
                      color: Colors.yellow,
                      child: Center(
                        child: Text(
                          'Container 3',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 100.0,
                      width: 100.0,
                      color: Colors.blue,
                      child: Text(
                        'Container 4',
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.black,
                    child: Center(
                      child: Text(
                        'Container 5',
                        style: new TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Container(
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
                ],
              )
            ]),
      ),
    );
  }
}
