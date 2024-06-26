import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UpdatePage extends StatefulWidget {
  @override
  _UpdatePageState createState() => _UpdatePageState();
}

class _UpdatePageState extends State<UpdatePage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<void> updateRecord() async {
    String Name = nameController.text;
    String Email = emailController.text;
    String Password = passwordController.text;

    if (Name.isNotEmpty || Email.isNotEmpty || Password.isNotEmpty) {
      try {
        // First, fetch the user data by name to get the ID.
        String uriFetch = "http://127.0.0.1/crudOperation.API/fetch_user.php";
        var responseFetch = await http.post(Uri.parse(uriFetch), body: {"Name": Name});
        var userData = jsonDecode(responseFetch.body);

        if (userData["success"] == "true") {
          int userId = userData["Id"];
          emailController = userData["Email"];
          passwordController = userData["Password"];

          // Update the user data using the ID.
          String uriUpdate = "http://127.0.0.1/crudOperation.API/update.php";
          var responseUpdate = await http.post(Uri.parse(uriUpdate), body: {
            "Id": userId.toString(),
            "Name": Name,
            "Email": Email,
            "Password": Password,
          });

          var resp = jsonDecode(responseUpdate.body);

          if (resp["success"] == "true") {
            print("Data Updated Successfully");
          } else {
            print("Data not updated successfully!!");
          }
        } else {
          print("User not found");
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
            SimpleButton(text: "Update", onPressed: updateRecord),
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
        'Update Page',
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
