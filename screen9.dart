import 'package:flutter/material.dart';

class Screen9 extends StatelessWidget {
  const Screen9({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 9'), // Use 'const' here
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Welcome to Screen 9!',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go Back to Main Screen'), // Use 'const' here
            ),
            
            // Widget 35: DropdownButton
            DropdownButton<String>(
              items: <String>['Option 1', 'Option 2', 'Option 3'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                // Dropdown logic here
              },
              value: 'Option 1', // Set the initial value as needed
            ),
            
            // Widget 36: Slider
            Slider(
              value: 0.5, // Set the initial value as needed
              onChanged: (double newValue) {
                // Slider logic here
              },
            ),
            
            // Widget 37: RangeSlider
            RangeSlider(
              values: const RangeValues(0.3, 0.7), // Set the initial values as needed
              onChanged: (RangeValues newValues) {
                // RangeSlider logic here
              },
            ),
            
             // Widget 38: Switch (Material-style)
Switch(
  value: true, // Set the initial value as needed
  onChanged: (bool value) {
    // Switch logic here
  },
),

          ],
        ),
      ),
    );
  }
}
