import 'package:flutter/material.dart';

class Screen7 extends StatelessWidget {
  const Screen7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 7'), // Use 'const' here
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Welcome to Screen 7!',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go Back to Main Screen'), // Use 'const' here
            ),
            
            // Widget 26: Tooltip
            const Tooltip(
              message: 'This is a tooltip',
              child:  Icon(Icons.info),
            ),
            
            // Widget 27: Divider
            const Divider(
              color: Colors.blue,
              thickness: 2,
            ),
            
            // Widget 28: SizedBox
            SizedBox(
              width: 100,
              height: 100,
              child: Container(color: Colors.green),
            ),
            
            // Widget 29: ElevatedButton
            ElevatedButton(
              onPressed: () {
                // Button logic here
              },
              child: const Text('Elevated Button'),
            ),
            
            // Widget 30: TextButton
            TextButton(
              onPressed: () {
                // Button logic here
              },
              child: const Text('Text Button'),
            ),
          ],
        ),
      ),
    );
  }
}
