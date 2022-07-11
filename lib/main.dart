import 'package:flutter/material.dart';
import 'package:mapbox_gl/mapbox_gl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Stack(
          children: [
            MapboxMap(
              accessToken:
                  "add mapbox access token here",
              initialCameraPosition: const CameraPosition(
                  target: LatLng(-27.180695, 152.96223), zoom: 16.0),
            ),
            const Positioned(
              top: 40,
              left: 26,
              right: 26,
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: "Stuff",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.vertical(
                        top: Radius.circular(6.0),
                        bottom: Radius.circular(6.0)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
