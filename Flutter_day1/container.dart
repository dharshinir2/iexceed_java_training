
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(myApp1());
}

class myApp1 extends StatelessWidget {
  const myApp1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
      title: Text("container"),
        ),
        body: Column(
          children: [
            Container(
              color: Colors.black,
              height: 100.0,
              width: double.infinity,

              child: Center( child:
                  Text("container1",style: TextStyle(color: Colors.white))),


            ),
            Container(
              color: Colors.black45,
              height: 100.0,
              width: double.infinity,
              child: Center( child: Text("container2"),),

            ),
            Container(
              color: Colors.black38,
              height: 100.0,
              width: double.infinity,
              child: Center(
                child: Text("container3"),
              )

            ),
            Container(
              color: Colors.black12,
              height: 100.0,
              width: double.infinity,
              child: Center(
                child:Text("container4")
              ),

            ),
            Row(
              children: [

                Container(
                  color: Colors.black,
                  height: 90.0,
                  width: 90.0,
                  child: Center(child: Text('box1',style: TextStyle(color: Colors.white),),),

                ),
                Container(
                  color: Colors.black26,
                  height: 90.0,
                  width: 90.0,
                  child: Center(child: Text('box2',style: TextStyle(color: Colors.white),),),

                ),
                Container(
                  color: Colors.black12,
                  height: 90.0,
                  width: 90.0,
                  child: Center(child: Text('box3',style: TextStyle(color: Colors.white),),),

                )

              ],
            )
          ],

        ),

      ),
    );
  }
}
