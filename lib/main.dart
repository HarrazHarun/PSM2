import 'package:flutter/material.dart';
import 'package:psm2/screens/map.dart';
import 'package:psm2/screens/objectdetection.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final screens = [
    ObjectDetection(),
    Map(),
  ];
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('UTeM Map Navigation System'),
          centerTitle: true,
        ),
        body: screens[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.blue,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white70,
            iconSize: 40,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.camera), label: 'Object Detection'
                  //backgroundColor: Colors.blue
                  ),
              BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Map'
                  //backgroundColor: Colors.green
                  ),
            ],
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            }),

        // This trailing comma makes auto-formatting nicer for build methods.
      );
}
