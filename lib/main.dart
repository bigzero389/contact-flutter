import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: ListView(
          padding: EdgeInsets.all(10),
          children: [
            Row( children: [ Icon(Icons.account_circle, size: 50,), Text('홍길동'), ], ),
            Row( children: [ Icon(Icons.account_circle, size: 50,), Text('홍길동'), ], ),
            Row( children: [ Icon(Icons.account_circle, size: 50,), Text('홍길동'), ], ),
          ],
        )
      )
    );
  }
}