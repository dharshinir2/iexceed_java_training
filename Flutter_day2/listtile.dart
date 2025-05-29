
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
          title: Text("list tile",style: TextStyle(color: Colors.yellow),),

        ),
        body: ListView(
          children: [
            ListTile(
              leading: Icon(CupertinoIcons.bluetooth),
              title: const Text('Bluetooth'),
              subtitle: const Text('Enable or disable Bluetooth'),
              trailing: Icon(CupertinoIcons.check_mark_circled_solid),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.doc_fill),
              title: const Text('Copy'),
              subtitle: const Text('Select the details to be copied'),
              trailing: Icon(CupertinoIcons.rectangle_compress_vertical),
            )
          ],
        ),

      ),

    );
  }
}


