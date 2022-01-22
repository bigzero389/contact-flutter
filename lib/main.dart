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
        // 스크롤바를 자동으로 만들어:ㅈ
        // 메모리 절약가능, 성능향상
        // 현재 스크롤 위치를 알수 있음
        body: ListView(
          children: [
            Text('Hello'),
            Text('Hello'),
            Text('Hello'),
            Text('Hello'),
            Text('Hello'),
            Text('Hello'),
          ],
        )
      )
    );
  }
}