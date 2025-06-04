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
      home: Scaffold(body:
          Column(
            children: [
              Container(
                height: 50,
                width: double.infinity,
                color: Colors.red,
              ),
              SizedBox(height: 20,),
              Container(
                height: 50,
                width: double.infinity,
                color: Colors.yellowAccent,
              ),
              SizedBox(
                width: 10,
              ),

              // SizedBox(
              //   height: 50,
              //     width: 300,
              //     child: ElevatedButton(onPressed:(){} , child: Text("click me"))),
              Divider(),
              Text("Sizedbox.fromSize"),

              SizedBox.fromSize(
                size: Size(300,50),
                  child: ElevatedButton(onPressed: (){}, child: Text("new"))),
              Divider(),
              Text("Sizebox.shirnk"),
              SizedBox(
                
                ),
              ConstrainedBox(
                  constraints: BoxConstraints(
                    minWidth: 100,
                    minHeight: 50,
                  ),
                  child: SizedBox.shrink(child: ElevatedButton(onPressed: (){}, child: Text("shrink")))
              ),
              Divider(),
              Text("Sizebox.expand"),
              ConstrainedBox
                (
                constraints: BoxConstraints(
                  maxHeight: 50,
                  maxWidth: 200
                ),
                  child: SizedBox.expand(child: ElevatedButton(onPressed: (){}, child: Text("expand")))),
              Divider()



            ],
          )
        ),

    );
  }
}
