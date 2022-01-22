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
        // 아무거나 다 커스텀 위젯으로 만들면 안됨. 재사용 많거나 큰 페이들을 커스텀 위젯으로 만드는 것이 좋음.
        body: ShopItem(),
      )
    );
  }
}

// stless
class ShopItem extends StatelessWidget {
  const ShopItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Text('Hello Custom Widget!!!'),
    );
  }
}

