import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/lazyloading.dart';

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
        body: Stack(
          clipBehavior: Clip.none,
          children: [
            
            Container(
              width: double.infinity,
              height: 250,



              child: Image.network("https://img.freepik.com/premium-photo/business-concept-relaxation-working-time-drinking-coffee-taking-break-clean-light-blue-office-table-copy-space-flat-lay-top-view-mockup_1040174-3762.jpg?ga=GA1.1.2068587281.1748849637&semt=ais_hybrid&w=740"),
            ),
            Positioned(
              bottom: -50,
              child: Container(
                width: 400,
                height: 150,

                child: Row(
                  children: [
                      Container(
                        
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/Profile/Dharshini Ramaswamy.JPG'),
                          radius: 80,
                        )
                      ),
                     SizedBox(
                       width: 10,
                     ),
                     Spacer(),




                     Container(
                        child: Column(
                          children: [
                            Spacer(),
                            Text("Dharshini R",style: TextStyle(
                              fontSize: 40,
                            ),),
                            Text("Intern/Trainee")
                          ],
                        ),
                       
                      ),



                   
                  ],
                ),

              ),


            )
          ],


        ),

      ),
    );
  }
}
