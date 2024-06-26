import 'package:flutter/material.dart';
import 'CreatePage.dart';
import 'my_datatable.dart';
import 'update.dart';
import 'delete.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'The Widgets Application'),
      routes: {
        '/create': (context) =>  CreatePage(),
        '/update': (context) =>   UpdatePage(),
        '/delete': (context) =>   DeletePage(),
        '/data': (context) =>     ViewPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: <Widget>[
            
            ElevatedButton(
              onPressed: () {
                // Navigate to Widget1Screen when the button is pressed
                Navigator.pushNamed(context, '/create');
              },
              child: const Text('Create New'),
            ),
              const SizedBox(height: 20),
             ElevatedButton(
              onPressed: () {
                // Navigate to Widget1Screen when the button is pressed
                Navigator.pushNamed(context, '/update');
              },
              child:const  Text('update data'),
            ),
              const SizedBox(height: 20),
             ElevatedButton(
              onPressed: () {
                // Navigate to Widget1Screen when the button is pressed
                Navigator.pushNamed(context, '/delete');
              },
              child: const Text('delete data'),
            ),
              const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to Widget2Screen when the button is pressed
                Navigator.pushNamed(context, '/data');
              },
              child: const Text('Data Table'),
            ),
          ],
        ),
      ),
    );
  }
}
