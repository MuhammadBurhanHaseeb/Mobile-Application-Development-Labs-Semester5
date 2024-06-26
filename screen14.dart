import 'package:flutter/material.dart';

class Screen14 extends StatelessWidget {
  const Screen14({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 14'), // Use 'const' here
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Welcome to Screen 14!',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go Back to Main Screen'), // Use 'const' here
            ),
            
            // Widget 52: Chip
           const Chip(
              label:  Text('Chip Widget'),
            ),
            
            // Widget 53: DataTable
            DataTable(
              columns: const <DataColumn>[
                DataColumn(
                  label: Text('Column 1'),
                ),
                DataColumn(
                  label: Text('Column 2'),
                ),
              ],
              rows: const <DataRow>[
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('Data 1')),
                    DataCell(Text('Data 2')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('Data 3')),
                    DataCell(Text('Data 4')),
                  ],
                ),
              ],
            ),
            
           // Widget 54: Tooltip
const Tooltip(
  message: 'This is another tooltip', // Tooltip message
  child: Text('Hover over me for another tooltip'),
),

// Widget 55: Card
const Card(
  child: ListTile(
    leading: Icon(Icons.favorite),
    title: Text('Card Widget'),
    subtitle: Text('This is a card widget.'),
    trailing: Icon(Icons.more_vert),
  ),
),

          
          ],
        ),
      ),
    );
  }
}
