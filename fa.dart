import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("Widgets")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello Flutter", style: TextStyle(fontSize: 25)),
            SizedBox(height: 20),

            Image.network(
              "https://flutter.dev/assets/images/shared/brand/flutter/logo/flutter-lockup.png",
              width: 150,
            ),

            SizedBox(height: 20),

            Container(
              padding: EdgeInsets.all(20),
              color: Colors.blue,
              child: Text(
                "Container Widget",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    ),
  ));
}