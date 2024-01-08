import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row (
            children: [
            Text("금호동3가", style: TextStyle(fontWeight: FontWeight.bold)),
            Icon(Icons.arrow_downward_outlined),
          ]
          ),
          actions: [
            Icon(Icons.search),
            SizedBox(width: 20),
            Icon(Icons.menu),
            SizedBox(width: 20),
            Icon(Icons.notifications_outlined),
            SizedBox(width: 21)
          ],

        shape: Border(
          bottom: BorderSide(
            color: Colors.black12,
            width: 2,
          )
        )
        ),

        body: Container(
          height: 150,
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Flexible( flex: 1, child: Image.asset('img.jpeg', width: 150, height: 150,)),
              Flexible( flex: 3, child: Container(

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("피규어 팔아요", style: TextStyle(fontSize: 25)),
                    SizedBox(height: 5),
                    Text('금호동 3가 · 끌올 10분 전', style: TextStyle(color: Colors.black54),),
                    SizedBox(height: 5),
                    Text('500원', style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.favorite_outline),
                        Text("10")
                      ],
                    )
                  ],
                ),
              )
              )
            ],
          ),
        )
      ),
    );
  }
}
