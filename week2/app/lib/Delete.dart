import 'package:flutter/material.dart';

class DeleteUserPage extends StatefulWidget {
  @override
  _DeleteUserPageState createState() => _DeleteUserPageState();
}

class _DeleteUserPageState extends State<DeleteUserPage> {
  TextEditingController _userIdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Delete User'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _userIdController,
              decoration: InputDecoration(labelText: 'User Email'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Call your API or backend service to delete the user
                deleteUser(_userIdController.text);
              },
              child: Text('Delete User'),
            ),
          ],
        ),
      ),
    );
  }

  void deleteUser(String userId) {
    // Add your logic to call the backend service to delete the user
    // For example, you might use a package like http or Dio for making API calls
    // Here, we are just printing a message for demonstration purposes.
    print('Deleting user with ID: $userId');

    // You can also navigate to another page or show a confirmation dialog here.
  }
}
