import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Center(
      //   child: Container(width: 50, height: 50, color: Colors.blue),
      // )
      // home: Scaffold(
      //   body: Row(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: [
      //       Icon(Icons.star),
      //       Icon(Icons.star),
      //       Icon(Icons.star),
      //     ]
      //   ),
      // ),
      // homework chapter 2
      home: Scaffold(
        // appBar: AppBar( title: Row( children: [ Text('앱임') ] ) ),
        appBar: AppBar( title: Text('앱임') ),
        body: Text('안녕'),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.phone),
              Icon(Icons.message),
              Icon(Icons.contact_page)
            ],
          )
        ),
      )
    );
  }
}
