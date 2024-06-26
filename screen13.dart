import 'package:flutter/material.dart';

class Screen13 extends StatelessWidget {
  const Screen13({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 13'), // Use 'const' here
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Welcome to Screen 13!',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go Back to Main Screen'), // Use 'const' here
            ),
            
            // Widget 56: Divider
             const Divider(
              height: 20, // Height of the divider
              thickness: 2, // Thickness of the divider line
              color: Colors.blue, // Color of the divider line
            ),
            
            // Widget 57: Spacer
           const  Spacer(flex: 1),
            
            // Widget 58: Transform
            Transform.rotate(
              angle: 0.5, // Angle of rotation in radians
              child: Container(
                width: 100,
                height: 100,
                color: Colors.red,
                child: const Center(child: Text('Transform')),
              ),
            ),
            
            // Widget 59: Drawer
            ElevatedButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              child: const Text('Open Drawer'),
            ),
          ],
        ),
      ),
    );
  }
}
