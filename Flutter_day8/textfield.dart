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
      home: demotext(),
    );
  }
}
class demotext extends StatelessWidget {
  const demotext({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text field "),
        backgroundColor: Colors.blue[100],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              style: TextStyle(
                color: Colors.blue,
                fontSize: 30
              ),
              textDirection: TextDirection.ltr,
              keyboardType: TextInputType.text,
              // obscureText: true,
              // maxLines: 3,

              maxLength: 10,
              decoration: InputDecoration(
                prefixIcon: Icon(CupertinoIcons.person),
                prefix: Text("Mr."),
                labelText: "Enter the user name",
                // floatingLabelAlignment: FloatingLabelBehavior.never,
                suffixIcon: Icon(Icons.verified),
                hintText: "Username",
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.blue[50],

              ),
            ),

          )
        ],
      ),
    );
  }
}

