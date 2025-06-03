import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/demohome.dart';

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
          backgroundColor: Colors.red,
          title: Text("Stack"),
        ),
        body: Stack(
          children: [
            Container(
              height: 400,
              width: 400,
              color: Colors.grey,
            ),
            Column(
              children: [
                Container(
                  height: 150,
                  width: 150,
                  child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRr-ez05hb-t6W6N8qEJWAn9TcO4kPmklkNw&s"),
                   ),
                Text("Saving account details")
              ],
            ),
            Positioned(
              right: 20,
              child: Column(
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdi2Te6xyK0Nj4-bPVC7j9M20eswswgRg3zQ&s"),
                            ),
                  Text("Loan details")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
