import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  runApp(MyMapApp());
}

class MyMapApp extends StatefulWidget {
  MyMapApp({Key? key}) : super(key: key);

  @override
  _MyMapAppState createState() => _MyMapAppState();
}

class _MyMapAppState extends State<MyMapApp> {
  Completer<GoogleMapController> _controller = Completer();

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
          children: <Widget>[
            GoogleMap(
              initialCameraPosition: CameraPosition(
                target:
                    LatLng(13.757429, 100.502465), //กำหนดพิกัดเริ่มต้นบนแผนที่
                zoom: 15, //กำหนดระยะการซูม สามารถกำหนดค่าได้ 0-20
              ),
              myLocationButtonEnabled: true,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
            ),
          ],
        ),
      ),
    );
  }
}
