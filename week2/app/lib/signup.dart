import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Signup Page',
      home: SignupPage(),
    );
  }
}

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController _First_Name = TextEditingController();
  final TextEditingController _Last_Name = TextEditingController();
  final TextEditingController _Email = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> _handleSignup() async {
    // Handle signup logic here
    String First_Name = _First_Name.text;
    String last_Name = _Last_Name.text;
    String username = _Email.text;
    String password = _passwordController.text;

    // Implement your signup logic, e.g., make an API call or save to a database
    // For simplicity, we'll print the values here
    print('First Name: $First_Name');
    print('Last Name: $last_Name');
    print('Username: $username');
    print('Password: $password');
    if (First_Name != "" &&
        last_Name != "" &&
        username != "" &&
        password != "") {
      try {
        String uri = "http://127.0.0.1/practice_api/insertrecord.php";
        var res = await http.post(Uri.parse(uri), body: {
          "Email": username,
          "Password": password,
          "First_Name": First_Name,
          "Last_Name": last_Name
        });
        print(res);
        var resp = jsonDecode(res.body);
        if (resp["success"] == "true") {
          print("Data Uploaded Successfully");
        } else {
          print("Data not uploaded successfully !!");
        }
      } catch (e) {
        print(e);
      }
    } else {
      print("Please fill all field");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Signup Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _First_Name,
              decoration: InputDecoration(labelText: 'First Name'),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _Last_Name,
              decoration: InputDecoration(labelText: 'Last Name'),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _Email,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: _handleSignup,
              child: Text('Sign Up',
                  style: TextStyle(
                    fontSize: 16,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
