import 'package:flutter/material.dart';

class Screen8 extends StatelessWidget {
  const Screen8({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 8'), // Use 'const' here
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Welcome to Screen 8!',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go Back to Main Screen'), // Use 'const' here
            ),
            
            // Widget 40: Checkbox
            Checkbox(
              value: true, // Set the initial value as needed
              onChanged: (bool? newValue) {
                // Checkbox logic here
              },
            ),
            
            // Widget 41: Radio
            Radio<int>(
              value: 1, // Set the value as needed
              groupValue: 1, // Set the group value as needed
              onChanged: (int? value) {
                // Radio logic here
              },
            ),
            
            // Widget 42: Slider
            Slider(
              value: 0.5, // Set the initial value as needed
              onChanged: (double newValue) {
                // Slider logic here
              },
            ),
            
            // Widget 43: RangeSlider
            RangeSlider(
              values: const RangeValues(0.3, 0.7), // Set the initial values as needed
              onChanged: (RangeValues newValues) {
                // RangeSlider logic here
              },
            ),
          ],
        ),
      ),
    );
  }
}
