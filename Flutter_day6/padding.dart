import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/circularavathar.dart';

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
        appBar: AppBar(
          title: Text("Padding"),
          backgroundColor: Colors.red,
        ),
        body: Column(
          children: [
            Text("Padding"),



              Center(
                child: Card(
                  color: Colors.lightBlueAccent[100],
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(40,20,40,20),
                    child: Text("EdgeInsets.fromLTRB"),

                ),
              ),

            ),
            Spacer(),
            Card(
              color: Colors.greenAccent[100],
              child: Padding(

                padding: EdgeInsetsGeometry.all(30),
                child: Text("EdgeInsetsGeometry.all"),
              ),
            ),
            Spacer(),
            Card(
              color: Colors.purple[100],
              child: Padding(


                padding: EdgeInsetsGeometry.symmetric(horizontal: 30,vertical: 20),
                child: Text("EdgeInsetsGeometry.symmetric"),
              ),
            ),
            Spacer(),
            Card(
              color: Colors.yellowAccent[100],
              child: Padding(
                padding: const EdgeInsetsGeometry.fromLTRB(40,20,40,20),
                child: Text("EdgeInsetsGeometry.fromLTRB"),
              ),
            ),
            Spacer(),
            Card(
              color: Colors.red[100],
              child: Padding(
                padding: const EdgeInsetsGeometry.directional(
                  start: 40,
                  end: 40,
                  top: 20,
                  bottom: 20
                ),
                child: Text("EdgeInsetsGeometry.directional"),
              ),
            ),
            Spacer(),
            Card(
              color: Colors.brown[100],
              child: Padding(
                padding: EdgeInsets.only(
                  top: 20,
                  bottom: 20,
                  left: 40,
                  right: 40
                ),
                child: Text("EdgeInsets.only"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
