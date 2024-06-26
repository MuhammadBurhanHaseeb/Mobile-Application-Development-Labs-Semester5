import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 3'), // Use 'const' here
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Welcome to Screen 3!',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go Back to Main Screen'), // Use 'const' here
            ),
            
            // Widget 6: DropdownButton
            DropdownButton<String>(
              value: 'Option 1',
              onChanged: (String? newValue) {
                // Handle dropdown selection here
              },
              items: <String>['Option 1', 'Option 2', 'Option 3']
                .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                })
                .toList(),
            ),
            
            // Widget 7: Slider
            Slider(
              value: 0.5,
              min: 0,
              max: 1,
              onChanged: (double newValue) {
                // Handle slider value change here
              },
            ),
            
            // Widget 8: Radio
            Radio<int>(
              value: 1,
              groupValue: 1,
              onChanged: (int? value) {
                // Handle radio selection here
              },
            ),
            
            // Widget 9: CheckboxListTile
            CheckboxListTile(
              title: const Text('Checkbox Tile'),
              value: true,
              onChanged: (bool? newValue) {
                // Handle checkbox state change here
              },
            ),
            
            // Widget 10: Card with an Image
            Card(
              elevation: 4,
              child: Column(
                children: [
                  Image.network(
                    'https://example.com/your_image_url.jpg',
                    width: 200,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                 const ListTile(
                    title: Text('Card Title'),
                    subtitle: Text('Card Subtitle'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
