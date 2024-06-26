import 'package:flutter/material.dart';

class Screen6 extends StatelessWidget {
  const Screen6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 6'), // Use 'const' here
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Welcome to Screen 6!',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go Back to Main Screen'), // Use 'const' here
            ),
            
            // Widget 21: Container
            Container(
              width: 100,
              height: 100,
              color: Colors.orange,
            ),
            
            // Widget 22: CircleAvatar
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://example.com/your_image_url.jpg'),
            ),
            
            // Widget 23: FittedBox
            const FittedBox(
              fit: BoxFit.contain,
              child:  FlutterLogo(),
            ),
            
            // Widget 24: LinearProgressIndicator
            const LinearProgressIndicator(
              value: 0.5, // Change the value as needed
            ),
            
            // Widget 25: CircularProgressIndicator
            const CircularProgressIndicator(
              value: 0.5, // Change the value as needed
            ),
          ],
        ),
      ),
    );
  }
}
