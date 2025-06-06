import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'navigate2.dart';

void main()
{
  runApp(hm());
}
class hm extends StatelessWidget {
  const hm({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: navigate1(),
    );
  }
}

class navigate1 extends StatelessWidget {
  const navigate1({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          title: Text("page1"),
          backgroundColor: Colors.purpleAccent[100],
        ),
        body: Column(
          children: [
            Container(
              child: Text("MAIN Page"),
            ),
            ElevatedButton(
                child: Text("Next Page"),
                onPressed: (){
              Navigator.push(
                  context,
                MaterialPageRoute( builder: (context) =>navigate2()),
                );
            },

            )


          ],
        ),
      );


  }
}
