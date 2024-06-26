import 'package:flutter/material.dart';

class Screen4 extends StatelessWidget {
  const Screen4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 4'), // Use 'const' here
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Welcome to Screen 4!',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go Back to Main Screen'), // Use 'const' here
            ),
            
            // Widget 11: InkWell
            InkWell(
              onTap: () {
                // Handle tap on InkWell
              },
              child: Container(
                padding:const EdgeInsets.all(16),
                color: Colors.yellow,
                child:const  Text('InkWell Widget'),
              ),
            ),
            
            // Widget 12: Positioned
            Stack(
              children: [
                Positioned(
                  left: 20,
                  top: 20,
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            
            // Widget 13: Spacer
           const Spacer(),
            
            // Widget 14: Tooltip
            const Tooltip(
              message: 'This is a tooltip',
              child: Icon(Icons.info),
            ),
            
            // Widget 15: Wrap
            const Wrap(
              spacing: 10,
              children: [
                Chip(
                  label: Text('Tag 1'),
                ),
                Chip(
                  label: Text('Tag 2'),
                ),
                Chip(
                  label: Text('Tag 3'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
