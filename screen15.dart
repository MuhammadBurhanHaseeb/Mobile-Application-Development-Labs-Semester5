import 'package:flutter/material.dart';

class Screen15 extends StatelessWidget {
  const Screen15({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 15'), // Use 'const' here
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Welcome to Screen 15!',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go Back to Main Screen'), // Use 'const' here
            ),
            
            // Widget 48: Tooltip
           const  Tooltip(
              message: 'This is a tooltip', // Tooltip message
              child:  Text('Hover over me for a tooltip'),
            ),
            
            // Widget 49: ExpansionTile
            const ExpansionTile(
              title:  Text('Expansion Tile'),
              children: <Widget>[
                ListTile(
                  title:  Text('Item 1'),
                ),
                ListTile(
                  title: Text('Item 2'),
                ),
              ],
            ),
            
            // Widget 50: SliverAppBar
            CustomScrollView(
              slivers: <Widget>[
                const SliverAppBar(
                  expandedHeight: 200.0,
                  flexibleSpace: FlexibleSpaceBar(
                    title: Text('SliverAppBar'),
                  ),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return ListTile(
                        title: Text('Item $index'),
                      );
                    },
                    childCount: 50, // Set the number of list items as needed
                  ),
                ),
              ],
            ),
            
            // Widget 51: Stepper
            Stepper(
              steps: const <Step>[
                Step(
                  title: Text('Step 1'),
                  content: Text('This is step 1'),
                ),
                Step(
                  title: Text('Step 2'),
                  content: Text('This is step 2'),
                ),
                Step(
                  title:  Text('Step 3'),
                  content: Text('This is step 3'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
