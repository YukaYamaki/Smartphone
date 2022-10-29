import 'package:flutter/material.dart';

void main(){
  runApp(
    const MaterialApp(
      home: SafeArea(
        child:IamRich(

        ),
        ),
    ),
  );
}

class IamRich extends StatelessWidget {
  const IamRich({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 184, 140, 124),
      body: Center(
        child: Image.asset(
          'images/Gold_ship.jpg'
          ),
        ),
       appBar: AppBar(
       backgroundColor: Colors.red,
             title: const Text
               ("Gold ship",
               style: TextStyle(
                 ),
              ),
          ),
      );
  } 
}
