import 'package:flutter/material.dart';
import 'config/config.dart';
import 'image_select.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutterApp',
      initialRoute: "top",
      routes: {
        "top": (context) => HomePage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                Config.getString(),
                style: TextStyle(fontSize: 60.0),
              ),
            ),
            ImageSelect(),
          ],
        ),
      ),
    );
  }
}