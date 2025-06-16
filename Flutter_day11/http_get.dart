import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class getmyapi extends StatefulWidget {
  const getmyapi({super.key});

  @override
  State<getmyapi> createState() => _getmyapiState();

}

class _getmyapiState extends State<getmyapi> {
  Map<String,dynamic>? mapdata;
  @override
  void initState() {
    // TODO: implement initState
    hitapi();
    super.initState();
  }
  Future hitapi()async
  {
    http.Response response;

    response=await http.get(Uri.parse('https://reqres.in/api/users?page=2'));
    print(response.statusCode);
    mapdata=jsonDecode(response.body);

    print(mapdata?['data'][0]);
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Https get"),backgroundColor: Colors.purple[100],),
      body: Center(
        child: ListView(
          children: [
            for(int i=0;i<mapdata!.length;i++)

                ListTile(
                  title: Text(mapdata!['data'][i]["first_name"]),
                  subtitle: Text(mapdata!['data'][i]["email"]),
                )


          ],
        ),
      ),
    );
  }
}
