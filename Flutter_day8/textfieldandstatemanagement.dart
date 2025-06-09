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
      home: demote(),
    );
  }
}
class demote extends StatefulWidget {
  const demote({super.key});

  @override
  State<demote> createState() => _demoteState();
}

class _demoteState extends State<demote> {
  bool isSelected=true;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Text field "),
        backgroundColor: Colors.blue[100],
      ),
      body:

      Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20
              ),
              textDirection: TextDirection.ltr,
              keyboardType: TextInputType.text,
              obscureText: isSelected,
              maxLength: 10,
              decoration: InputDecoration(
                prefixIcon: Icon(CupertinoIcons.person),

                labelText: "Enter the password",
                // floatingLabelAlignment: FloatingLabelBehavior.never,
                suffixIcon: IconButton(onPressed: (){
                  setState(() {
                    isSelected=!isSelected;
                  });

                }, icon: Icon(CupertinoIcons.eye),
              ),

                hintText: "password",

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


