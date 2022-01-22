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
        // appBar: AppBar(leading: Icon(Icons.star), title: Text('타이틀'),),
        appBar: AppBar( actions: [Icon(Icons.star), Icon(Icons.star)], title: Text('타이틀') ),
        // 레이아웃 잘짜는 법
        // 1. 원화가 필요함(원본디자인), 없으면 베낀다
        // 2. 네모부터 그린다. 빈공간이 없도록
        // 3. 겉에 박스부터 안에까지 차례로 container 나 row 들을 배치한다.
        // 4. 마지막으로 디자인(패딩, 마진등)을 한다.
        body: SizedBox(
          child: Row(
            children: [
              Text('안녕하세요', style: TextStyle(color: Colors.red),),
              Icon(Icons.star, color: Colors.amber,),
              ElevatedButton(
                child: Text('글자'),
                onPressed: (){},)
            ],
          ),
        ),
      ),
    );
  }
}
