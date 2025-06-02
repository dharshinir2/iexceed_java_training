import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/listbuilder.dart';

void main()
{
  runApp(myApp());
}
class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar: AppBar(),
        body:Column(
          children: [

              Expanded(
                child: ListView.builder(
                  // itemCount: 10,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Icon(Icons.insert_chart_outlined),
                        title: Text('List $index'));
                  },
                ),
              ),

          ],
        )




    ),
    );


  }
}
