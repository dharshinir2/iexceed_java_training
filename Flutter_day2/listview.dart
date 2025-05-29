
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
          backgroundColor: Colors.blue,
          title: Text("list view",style: TextStyle(color: Colors.yellow),),

        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.all(16.0),
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 150.0,


                color: Colors.deepPurpleAccent,
                child: Center(child: Text("list1"),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 150.0,

                color: Colors.amber,
                child: Center(child: Text("list2"),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 150.0,

                color: Colors.grey,
                child: Center(child: Text("list1"),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 150.0,

                color: Colors.deepOrangeAccent,
                child: Center(child: Text("list1"),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 150.0,

                color: Colors.tealAccent,
                child: Center(child: Text("list1"),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 150.0,

                color: Colors.blue,
                child: Center(child: Text("list1"),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 150.0,

                color: Colors.lightGreen,
                child: Center(child: Text("list1"),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 150.0,

                color: Colors.pink,
                child: Center(child: Text("list1"),),
              ),
            ),




          ],
        ),

      ),

    );
  }
}


