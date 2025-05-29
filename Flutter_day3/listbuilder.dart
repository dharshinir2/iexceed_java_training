import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/listtile.dart';
import 'package:project1/booksmodel.dart';


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
          title: Text("Golden Rated Books"),
          backgroundColor: Colors.yellow,
          shadowColor: Colors.yellow,
        ),
        body: ListView.builder(itemCount: obj.length , itemBuilder: (BuildContext context,int index) {
          return getbook(index);
        })
      ),
    );
  }
  Widget getbook(int index) {
    return ListTile(
      leading: CircleAvatar(backgroundImage: AssetImage(obj[index].image ?? ''),
        radius: 30.0,),
      title: Text(obj[index].name),
      subtitle: Text(obj[index].author),
      trailing: Icon(Icons.insert_emoticon_rounded),

    );
    
  }
}

  

