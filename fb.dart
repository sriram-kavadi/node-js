import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("Layouts")),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("One"),
              Text("Two"),
              Text("Three"),
            ],
          ),

          SizedBox(height: 50),

          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 200,
                height: 150,
                color: Colors.blue,
              ),
              Text(
                "Stack",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ],
          ),
        ],
      ),
    ),
  ));
}