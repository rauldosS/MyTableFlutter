import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(children: [
          Spacer(),
          Center(
            child: Opacity(opacity: 0.3, child: Text("Olá Programação IV"),)
          ),
          Spacer(),
          Center(child: Theme(
            data: ThemeData(accentColor: Colors.amber[300]),
              child: Container(
                color: Theme.of(context).accentColor,
                child: Text(
                  'Este teste tem uma cor de fundo',
                  style: Theme.of(context).textTheme.title
                ),
              )
            ),
          ),
          Spacer(),
          Center(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFF000000), Color(0XFFFF0000)],
                  tileMode: TileMode.repeated
                )
              ),
              child: Container(
                width: 100, 
                height: 100,
                child: Text("Opaaa", style: TextStyle(color: Colors.white)),
              ),
            ),
          ),
          Spacer(),
          Center(
            child: Container(
              color: Colors.yellow,
              child: Transform(
                alignment: Alignment.bottomLeft,
                transform: Matrix4.skewY(0.4)..rotateZ(7),
                child: Container(
                  padding: const EdgeInsets.all(12),
                  color: Colors.red,
                  child: (Text("Qualquer coisa!")),
                ),
              ),
            ),
          )
        ],),
      )
    );
  }
}