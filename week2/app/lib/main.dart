import 'dart:convert';

import 'package:app/Delete.dart';
import 'package:app/logo.dart';
import 'package:app/mybutton.dart';
import 'package:app/signup.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

void main() {
  runApp(const MyApp());
}

final TextEditingController Emails = TextEditingController();
final TextEditingController Passwords = TextEditingController();
String Emailz = Emails.text;
String Passwordz = Passwords.text;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: logoscreen(),
    );
  }
}

Future<void> signinuser() async {
  print('Email: $Emailz');
  print('Password: $Passwordz');
  if (Emailz != "" && Passwordz != "") {
    String uri = "http://127.0.0.1/practice_api/validrecord.php";
    try {
      http.Response response = await http.post(
        Uri.parse(uri),
        body: {
          "username": Emailz,
          "password": Passwordz,
        },
      );
      var jsonResponse = jsonDecode(response.body);
      debugPrint(jsonResponse.toString());
      if (response.statusCode == 200) {
        if (jsonResponse["Exists"] == true) {
          // User credentials are valid
          print("Credentials are valid");
        } else {
          // User credentials are not valid
          print("Invalid credentials");
        }
      } else {
        // Handle non-200 status code
        print("HTTP request failed with status: ${response.statusCode}");
      }
    } catch (e) {
      // Handle exceptions
      print("Error: $e");
    }
  }
}

void signupuser(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => SignupPage(),
    ),
  );
}

void deleteuser(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => DeleteUserPage(),
    ),
  );
}

class DashBoardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            const Icon(
              Icons.lock,
              size: 100,
            ),
            const SizedBox(height: 50),
            Text(
              'Welcome back you\'ve been missed!',
              style: TextStyle(color: Colors.grey[700], fontSize: 16),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                controller: Emails,
                decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade400)),
                  fillColor: Colors.grey.shade200,
                  filled: true,
                  hintText: 'Email',
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                obscureText: true,
                controller: Passwords,
                decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade400)),
                  fillColor: Colors.grey.shade200,
                  filled: true,
                  hintText: 'Password',
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  mybutton(
                    onTap: () => deleteuser(context),
                    buttontext: 'Delete User',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            mybutton(
              onTap: signinuser,
              buttontext: 'Sign In',
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Not a member?',
                  style: TextStyle(color: Colors.grey[700]),
                ),
                const SizedBox(width: 4),
                mybutton(
                  onTap: () => signupuser(context),
                  buttontext: 'Register',
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
