import 'package:flutter/material.dart';
import 'package:project1/navigate2.dart';

class navigate3 extends StatelessWidget {
  const navigate3({super.key});

  @override
  Widget build(BuildContext context) {
    return (
      Scaffold(
        appBar: AppBar(
          title: Text("Page3"),
          backgroundColor: Colors.yellowAccent,
        ),
        body: Container(
          child: ElevatedButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("back")),
        )
        ,
      )
    );
  }
}
