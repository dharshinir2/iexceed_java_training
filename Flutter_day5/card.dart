import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[900],
          title:Text("Login"),

        ),
        body: Center(
          child: Card(
            color: Colors.white,
            elevation: 25,
            shadowColor: Colors.cyan,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side:BorderSide(color: Colors.black, width: 3),
            ),
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.network(
                    "https://www.i-exceed.com/wp-content/uploads/2022/08/i-exceed-Hi-Res-copy-1.webp",
                    width: 100,
                    height: 100,
                  ),
                  SizedBox(height: 20),
                   Text(
                    "I-Exceed Technology Pvt. Ltd.",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),

                  ElevatedButton(
                    onPressed: () {
                      print("welcome");

                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child:  Text(
                      'Login',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),


                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
