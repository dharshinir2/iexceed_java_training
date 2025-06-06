import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'dart:io';
void main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Permission.photos.request();
  runApp(MyImage());
}
class MyImage extends StatelessWidget {
  const MyImage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Images"),
          backgroundColor: Colors.blue[100],
        ),
        body:
        Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text("Image from Network",style: TextStyle(fontSize: 30),),
            Container(
              child: Image.network("https://static.vecteezy.com/system/resources/thumbnails/006/296/747/small/bookshelf-with-books-biography-adventure-novel-poem-fantasy-love-story-detective-art-romance-banner-for-library-book-store-genre-of-literature-illustration-in-flat-style-vector.jpg"),
            ),
            Text("Image from Asset",style: TextStyle(fontSize: 30),),
            Container(
              child: Image.asset("assets/books/cart.png",height: 60,width: 400,
              repeat: ImageRepeat.repeat,
              ),

            ),
            Container(
              child: Image(image: AssetImage("assets/books/divider.png"))

            ),
            Text("Image from emulator",style: TextStyle(fontSize: 30),),
            Container(

                child: Image.file(File('/storage/emulated/0/DCIM/the silent patient.jpeg'))
            ),
          ],
        ),
      ),
    );
  }
}