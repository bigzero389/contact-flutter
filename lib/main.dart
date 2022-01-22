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
          width: double.infinity,
          height: 150,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Flexible(child: Image.asset('assets/dog.png', width: 200,), flex: 3,),
              Flexible(child: SizedBox(
                height: 150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('멍멍이', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                    Text('용마산로 174'),
                    Text('70,000원'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.favorite),
                        Text('4')
                      ],
                    )
                  ],
                ),
                ), flex: 7,
              )
            ]
          )
        )
      ),
    );
  }
}
