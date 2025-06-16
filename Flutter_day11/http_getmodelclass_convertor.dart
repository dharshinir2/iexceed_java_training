import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


import 'Model/User2.dart';

void main(){
  runApp(getmodelclass());
}
class getmodelclass extends StatefulWidget {
  const getmodelclass({super.key});

  @override
  State<getmodelclass> createState() => _getmodelclassState();
}

class _getmodelclassState extends State<getmodelclass> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //getapi();
  }
  Future  getapi()async
  {
    http.Response response;
    response=await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    var datamap=jsonDecode(response.body);
    List <User2> luser=[];
    for(var i in datamap)
    {
      User2 u=User2(name:i["name"],email:i["email"],username: i["username"]);
      luser.add(u);
    }

    return luser;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Get model class"),
          backgroundColor: Colors.red[100],
        ),
        body: Center(
          child: FutureBuilder(future: getapi(), builder: (BuildContext context,AsyncSnapshot snapshot){
            return Container(
              child:
              ListView.builder(itemCount: snapshot.data.length, itemBuilder: (BuildContext context,int index){
                return ListTile(
                  title: Text(snapshot.data[index].name),
                  subtitle: Text(snapshot.data[index].username),
                );
              }),
            );
          }),
        ),
      ),
    );
  }
}

