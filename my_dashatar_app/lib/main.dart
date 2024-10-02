import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        titleTextStyle: const TextStyle(
          color: Colors.white,
        ),
        centerTitle: true,
        title: const Text(
          "My Dashatar App",
        ),
      ),
          body: Center(child: Image.asset('images/dashatar.png'),),
    )),
  );
}
