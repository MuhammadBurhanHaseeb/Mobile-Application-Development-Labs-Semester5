import 'package:flutter/material.dart';

class Screen10 extends StatelessWidget {
  const Screen10({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 10'), // Use 'const' here
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Welcome to Screen 10!',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go Back to Main Screen'), // Use 'const' here
            ),
            
            // Widget 31: OutlinedButton
            OutlinedButton(
              onPressed: () {
                // Button logic here
              },
              child: const Text('Outlined Button'),
            ),
            
            // Widget 32: ElevatedButton.icon
            ElevatedButton.icon(
              onPressed: () {
                // Button logic here
              },
              icon: const Icon(Icons.add),
              label: const Text('Elevated Button with Icon'),
            ),
            
            // Widget 33: TextButton.icon
            TextButton.icon(
              onPressed: () {
                // Button logic here
              },
              icon: const Icon(Icons.remove),
              label: const Text('Text Button with Icon'),
            ),
            
            // Widget 34: IconButton
            IconButton(
              onPressed: () {
                // Button logic here
              },
              icon: const Icon(Icons.star),
            ),
          ],
        ),
      ),
    );
  }
}
