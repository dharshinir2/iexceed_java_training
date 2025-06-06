import 'package:flutter/material.dart';
import 'package:project1/navigate3.dart';

class navigate2 extends StatelessWidget {
  const navigate2({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(appBar: AppBar(
        title: Text("Second page"),
        backgroundColor: Colors.red[100],
      ),
        body: Column(
          children: [
            Container(
              child: Text("Second page"),
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>navigate3()));
            }, child: Text("back"))
          ],
        ),
      );

  }
}
