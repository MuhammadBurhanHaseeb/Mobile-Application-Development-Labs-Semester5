import 'package:flutter/material.dart';

class Screen5 extends StatelessWidget {
  const Screen5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 5'), // Use 'const' here
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Welcome to Screen 5!',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go Back to Main Screen'), // Use 'const' here
            ),
            
            // Widget 16: PageView
            PageView(
              children: <Widget>[
                Container(
                  color: Colors.red,
                  child: const Center(child: Text('Page 1')),
                ),
                Container(
                  color: Colors.green,
                  child: const Center(child: Text('Page 2')),
                ),
                Container(
                  color: Colors.blue,
                  child: const Center(child: Text('Page 3')),
                ),
              ],
            ),
            
            // Widget 17: SingleChildScrollView
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  Container(width: 200, height: 200, color: Colors.orange),
                  Container(width: 200, height: 200, color: Colors.purple),
                  Container(width: 200, height: 200, color: Colors.teal),
                ],
              ),
            ),
            
            // Widget 18: Placeholder
            const Placeholder(
              color: Colors.grey,
              fallbackHeight: 100,
              fallbackWidth: 100,
            ),
            
            // Widget 19: AspectRatio
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                color: Colors.yellow,
                child: const Center(child: Text('16:9 Aspect Ratio')),
              ),
            ),
            
            // Widget 20: Spacer
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
