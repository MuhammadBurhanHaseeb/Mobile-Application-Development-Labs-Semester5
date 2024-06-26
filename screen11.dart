import 'package:flutter/material.dart';

class Screen11 extends StatelessWidget {
  const Screen11({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 11'), // Use 'const' here
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Welcome to Screen 11!',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go Back to Main Screen'), // Use 'const' here
            ),
            
            // Widget 44: CircularProgressIndicator
            const CircularProgressIndicator(),
            
            // Widget 45: LinearProgressIndicator
            const LinearProgressIndicator(),
            
            // Widget 46: RefreshIndicator
            RefreshIndicator(
              onRefresh: () async {
                // Refresh logic here
              },
              child: const SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                child: Column(
                  children: <Widget>[
                    // RefreshIndicator requires a scrollable child
                    // Add your scrollable content here
                  ],
                ),
              ),
            ),
            
            // Widget 47: InkWell
            InkWell(
              onTap: () {
                // InkWell onTap logic here
              },
              child: Container(
                padding: const EdgeInsets.all(12),
                child: const Text('InkWell Widget'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
