import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/listbuilder.dart';

void main(){
  runApp(demoextend());
}
class demoextend extends StatelessWidget {
  const demoextend({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Expand"),
      ),
        body: Column(children: [
          Expanded(
            flex: 4,
            child: Container(
              height: 250,
              width: 250,
              color: Colors.blue,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 250,
              width: 250,
              color: Colors.yellowAccent,
            ),
          ),
          Expanded(
            child: Container(
              height: 250,
              width: 250,
              color: Colors.greenAccent,
            ),
          )
        ],),
          

      ),
    );

  }
}
