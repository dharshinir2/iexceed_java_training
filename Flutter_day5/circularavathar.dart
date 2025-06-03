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
        body: Row(
          children: [
            Container(

              child: CircleAvatar(
                radius: 100,
                child: Text("Dharshu",style: TextStyle(fontSize: 15),),
              ),
            ),
            Container(

              child: CircleAvatar(
                radius: 100,
                backgroundColor: Colors.lightGreenAccent,

                child: CircleAvatar(
                  radius: 80,
                  child: Text(""),
                  backgroundImage: AssetImage('assets/Profile/Dharshini Ramaswamy.JPG'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
