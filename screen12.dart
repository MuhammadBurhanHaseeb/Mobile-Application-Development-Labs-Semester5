import 'package:flutter/material.dart';

class Screen12 extends StatelessWidget {
  const Screen12({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 12'), // Use 'const' here
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Welcome to Screen 12!',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go Back to Main Screen'), // Use 'const' here
            ),
            
            // Widget 60: ListTile
            ListTile(
              leading: const Icon(Icons.account_circle),
              title: const Text('User Profile'),
              subtitle: const Text('This is a user profile'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                // Handle tap on the ListTile
              },
            ),
            
            // Widget 61: Divider
            const Divider(
              height: 20, // Height of the divider
              thickness: 2, // Thickness of the divider line
              color: Colors.green, // Color of the divider line
            ),
            
            // Widget 62: Spacer
           const  Spacer(flex: 2),
            
            // Widget 63: AlertDialog
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Alert Dialog'),
                      content: const Text('This is an alert dialog.'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('Close'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text('Show Alert Dialog'),
            ),
            
            // Widget 64: CupertinoDatePicker
            Stepper(
              currentStep: 0, // Current step index (start from 0)
              onStepContinue: () {
                // Handle "Continue" button tap
              },
              onStepCancel: () {
                // Handle "Cancel" button tap
              },
              steps:const <Step>[
                Step(
                  title:  Text('Step 1'),
                  content:  Text('This is step 1 content.'),
                ),
                Step(
                  title:  Text('Step 2'),
                  content:  Text('This is step 2 content.'),
                ),
                Step(
                  title:  Text('Step 3'),
                  content:  Text('This is step 3 content.'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
