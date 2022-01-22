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
        appBar: AppBar( title: Text('앱임') ),
        body: Align(
          alignment: Alignment.topCenter,
          child: Container(
            child: Text('여백들'),
            width: double.infinity/* 바깥쪽 Container 내에서 꽉차게 넣음 */, height: 100, /* color: Colors.black,*/
            // margin: EdgeInsets.all(20),  // 바깥쪽 여백
            margin: EdgeInsets.fromLTRB(10, 20, 10, 30),
            padding: EdgeInsets.all(20),  // 안쪽 여백
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black), // 동일한 Container 안에 Color 를 두개 넣으면 에러난다.
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: SizedBox ( //Container( // Container 보다 SizedBox 가 더 가볍다.
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.phone),
                Icon(Icons.message),
                Icon(Icons.contact_page)
              ],
            ),
          )
        ),
      )
    );
  }
}
