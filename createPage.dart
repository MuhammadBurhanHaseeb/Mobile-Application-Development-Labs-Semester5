import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CreatePage extends StatefulWidget {
  @override
  _CreatePageState createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<void> insertRecord() async {
    String Name= nameController.text;
    String Email = emailController.text;
    String Password = passwordController.text;

    if (Name.isNotEmpty || Email.isNotEmpty || Password.isNotEmpty) {
      try {
        String uri = "http://127.0.0.1/crudOperation.API/insert.php";
        var res = await http.post(Uri.parse(uri), body: {
          "Name": Name                      ,
          "Email": Email,
          "Password": Password,
        });
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
      print("Please fill all fields");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(127, 211, 196, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextWidget(),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextFieldWidget(
                controller: nameController,
                hintText: 'Name',
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextFieldWidget(
                controller: emailController,
                hintText: 'Email',
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextFieldWidget(
                controller: passwordController,
                hintText: 'Password',
              ),
            ),
            SizedBox(height: 10),
            SimpleButton(text: "Send", onPressed: insertRecord),
          ],
        ),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 50),
      child: Text(
        'New Data',
        style: TextStyle(
          fontSize: 50,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
      ),
    );
  }
}

class TextFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;

  TextFieldWidget({required this.controller, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: TextStyle(
        fontSize: 30,
        color: Color.fromRGBO(255, 255, 255, 1),
      ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
        filled: true,
        fillColor: Color.fromRGBO(3, 55, 47, 1),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromRGBO(127, 211, 196, 1),
            width: 10.0,
            style: BorderStyle.none,
          ),
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(100),
            right: Radius.circular(100),
          ),
        ),
      ),
    );
  }
}

class SimpleButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  SimpleButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
