import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 1'), // Use 'const' here
      ),
      body: Center(

        

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Welcome to Screen 1!',
              style: TextStyle(fontSize: 24),),

           // Widget 4
          Image.network(
            'https://images.app.goo.gl/dXvesSwvAomjMBkJA',
            width: 4,
            height: 4,
          ),



          // Widget 1
          Container(
            padding:const EdgeInsets.all(16),
            child: const Text(
              'Widget 1',
              style: TextStyle(fontSize: 24),
            ),
          ),
          
          // Widget 2
          ElevatedButton(
            onPressed: () {
              // Add logic for Widget 2
            },
            child:const Text('Widget 2'),
          ),
          
          // Widget 3
          TextFormField(
            decoration:const InputDecoration(labelText: 'Widget 3'),
          ),
          
         


            
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go Back to Main Screen'), // Use 'const' here
            ),
          ],
        ),
      ),
    );
  }
}
