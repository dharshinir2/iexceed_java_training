import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/demohome.dart';

void main()
{
  runApp(myApp());
}
class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              height: 100,
              color: Colors.yellowAccent,
            ),
            Divider(
              color: Colors.black,
              thickness: 6,
              height: 10,
              indent: 2,endIndent: 2,
            ),
            Container(
              height: 100,
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
