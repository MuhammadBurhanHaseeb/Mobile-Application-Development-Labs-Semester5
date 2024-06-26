import 'dart:async';

import 'package:app/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class logoscreen extends StatefulWidget {
  @override
  State<logoscreen> createState() => _logoscreenState();
}

class _logoscreenState extends State<logoscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => DashBoardScreen(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
          child: Icon(
        Icons.check,
        size: 180,
        color: Colors.white,
      )),
    );
  }
}
