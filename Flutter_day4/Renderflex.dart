import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/listbuilder.dart';

void main(){
  runApp(myApp());
}
class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar: AppBar(),
        body: Row(children: [
          Expanded(
            child: Container(
              child: Image.network('https://bsmedia.business-standard.com/_media/bs/img/article/2023-03/27/full/1679923530-8258.jpg?im=FeatureCrop,size=(826,465)')

            ),
          ),
          SizedBox(
            width: 40,
          ),
          Expanded(
            child: Container(
              child: Text("an establishment for receiving, keeping, lending, or, sometimes, issuing money, and making easier the exchange of funds by checks, notes, etc."),
            ),
          )
        ],),
      ),

    );
  }
}
