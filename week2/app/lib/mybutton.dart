import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class mybutton extends StatelessWidget {
  final Function()? onTap;
  final String buttontext;
  const mybutton({
    super.key,
    required this.onTap,
    required this.buttontext,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
            child: Text(
          buttontext,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        )),
      ),
    );
  }
}
