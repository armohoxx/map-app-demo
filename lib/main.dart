import 'package:flutter/material.dart';

void main() {
  runApp(MyMapApp());
}

class MyMapApp extends StatefulWidget {
  MyMapApp({Key? key}) : super(key: key);

  @override
  _MyMapAppState createState() => _MyMapAppState();
}

class _MyMapAppState extends State<MyMapApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyMapApp",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Center(
            child: Text(
              "แผนที่",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        body: Stack(
          children: <Widget>[],
        ),
      ),
    );
  }
}
