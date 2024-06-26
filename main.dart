import 'package:flutter/material.dart';
import 'package:widgets/1st_Folder/screen1.dart';
import 'package:widgets/1st_Folder/screen2.dart';
import 'package:widgets/1st_Folder/screen3.dart';
import 'package:widgets/1st_Folder/screen4.dart';
import 'package:widgets/1st_Folder/screen5.dart';

import 'package:widgets/2nd_folder/screen6.dart';
import 'package:widgets/2nd_folder/screen7.dart';
import 'package:widgets/2nd_folder/screen10.dart';
import 'package:widgets/2nd_folder/screen9.dart';
import 'package:widgets/2nd_folder/screen8.dart';

import 'package:widgets/3rd_folder/screen11.dart';
import 'package:widgets/3rd_folder/screen15.dart';
import 'package:widgets/3rd_folder/screen14.dart';
import 'package:widgets/3rd_folder/screen13.dart';
import 'package:widgets/3rd_folder/screen12.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Home '),
      




    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Screen1()), // Navigate to Screen1
                );
              },
              child:const Text('Go to Screen 1'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Screen2()), // Navigate to Screen2
                );
              },
              child:const Text('Go to Screen 2'),
            ),
           ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Screen3()), // Navigate to Screen3
                );
              },
              child:const Text('Go to Screen 3'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Screen4()), // Navigate to Screen4
                );
              },
              child:const Text('Go to Screen 4'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const  Screen5()), // Navigate to Screen5
                );
              },
              child:const Text('Go to Screen 5'),
            ),

             ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Screen6()), // Navigate to Screen6
                );
              },
              child:const Text('Go to Screen 6'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Screen7()), // Navigate to Screen7
                );
              },
              child:const Text('Go to Screen 7'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Screen8()), // Navigate to Screen8
                );
              },
              child:const Text('Go to Screen 8'),
            ),
             ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Screen9()), // Navigate to Screen9
                );
              },
              child:const  Text('Go to Screen 9'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Screen10()), // Navigate to Screen10
                );
              },
              child: const Text('Go to Screen 10'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Screen11()), // Navigate to Screen11
                );
              },
              child:  const Text('Go to Screen 11'),
            ),

           
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Screen12()), // Navigate to Screen12
                );
              },
              child: const Text('Go to Screen 12'),
            ),

             ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Screen13()), // Navigate to Screen13
                );
              },
              child: const Text('Go to Screen 13'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Screen14()), // Navigate to Screen14
                );
              },
              child: const Text('Go to Screen 14'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Screen15()), // Navigate to Scree15
                );
              },
              child: const Text('Go to Screen 15'),
            ),




          ],

            




        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

