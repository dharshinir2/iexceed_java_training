import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'http_get.dart';

void main()
{
  runApp(restapp());
}
class restapp extends StatefulWidget {
  const restapp({super.key});

  @override
  State<restapp> createState() => _restappState();
}

class _restappState extends State<restapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: getmyapi(),
    );
  }
}
