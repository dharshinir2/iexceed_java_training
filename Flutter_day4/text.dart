import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/lazyloading.dart';

void main()
{
  runApp(myApp());
}
class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Text Styling"),
        foregroundColor: Colors.white,
      ),
        body: Center(
            child: Text("Welcome to my App",
            maxLines: 2,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            softWrap: true,
            style: TextStyle(
              fontSize: 25,
                  fontFamily: "Ariel",
              letterSpacing: 2,
              wordSpacing: 5,
              backgroundColor: Colors.yellow,
              decoration: TextDecoration.underline,
            ),
            )

        )
      ),
    );
  }
}
