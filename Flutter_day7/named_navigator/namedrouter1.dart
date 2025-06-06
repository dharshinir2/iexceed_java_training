import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'namedrouter2.dart';
import 'namedrouter3.dart';

void main()
{
  runApp(namedrouter1());
}
class namedrouter1 extends StatelessWidget {
  const namedrouter1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Named Routes Example',

      // Define routes here
      initialRoute: '/',
      routes: {
        '/': (context) => const homepage(),
        '/second': (context) => const namedrouter2(),
        '/third': (context) => const namedrouter3(),
      },
    );

  }

}
class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home page"),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, '/second');

          }, child: Text("second page")),
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, '/third');
          }, child: Text("Third page"))
        ],
      ),
    );
  }
}
