import 'package:flutter/material.dart';

class namedrouter2 extends StatelessWidget {
  const namedrouter2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second page"),
        backgroundColor: Colors.greenAccent[100],
      ),
    );
  }
}
