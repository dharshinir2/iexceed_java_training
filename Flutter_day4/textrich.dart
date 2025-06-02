import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
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
        backgroundColor: Colors.red,
        title: Text("Text rich"),
        foregroundColor: Colors.white,
      ),
        body: Text.rich(
    TextSpan(text: "Account type-Savings",
      children: [
        TextSpan(text: "\nHolder's name - Dharshini R",style: TextStyle(fontFamily: "serif"),
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              // Handle tap on 'Savings'
              print("Savings tapped");
            },)
      ]
    )

        )
      ),
    );

  }
}
