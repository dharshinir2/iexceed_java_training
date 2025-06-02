import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(DemoAnimated());
}
class DemoAnimated extends StatefulWidget {
  const DemoAnimated({super.key});

  @override
  State<DemoAnimated> createState() => _DemoAnimatedState();
}

class _DemoAnimatedState extends State<DemoAnimated> {
  bool selected=false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()
      {
        setState(() {
          selected=!selected;

        });
        print("Container tapped");
      } ,child: Center(
        child: Container(
          width: double.infinity,
        height: 250,
        color: Colors.blue,
          child: AnimatedAlign(alignment: selected? Alignment.topRight:Alignment.center, duration: Duration(seconds: 2),curve: Curves.bounceIn,child: FlutterLogo(size: 60,),),
            ),
      ),
    );
  }
}

