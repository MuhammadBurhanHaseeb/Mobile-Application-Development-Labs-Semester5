import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 2'), // Use 'const' here
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Welcome to Screen 2!',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go Back to Main Screen'), // Use 'const' here
            ),
            
            // Widget 1: Divider
            const Divider(),
            
            // Widget 2: Icon
            const Icon(Icons.star, size: 48, color: Colors.orange),
            
            // Widget 3: CircularProgressIndicator
            const CircularProgressIndicator(),
            
            // Widget 4: Text with custom style
            const Text(
              'Custom Style Text',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            
            // Widget 5: Image
            Image.network(
              'https://example.com/your_image_url.jpg',
              width: 200,
              height: 200,
            ),
            
            // Widget 6: Switch
            Switch(
              value: true,
              onChanged: (bool value) {
                // Handle switch state change here
              },
            ),
          ],
        ),
      ),
    );
  }
}
