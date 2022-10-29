// import 'package:flutter/foundation.dart';
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const DiceApp());
}

class DiceApp extends StatelessWidget {
  const DiceApp({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            title: const Text("Dicee App"),
            backgroundColor: Colors.red,
          ),
          body: const DicePage(),
        ),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}








class _DicePageState extends State<DicePage> {

  
int dicenNumberLeft = 1;
int dicenNumberRight =1;

void rollDiceLeft(){
  setState(() {
    dicenNumberLeft = Random().nextInt(6) + 1;
  });
}
void rollDiceRight(){
  setState(() {
    dicenNumberRight = Random().nextInt(6) + 1;
  });
}



  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                rollDiceLeft();
              },
              child: Image.asset("images/dice$dicenNumberLeft.png"),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                rollDiceRight();
              },
              child: Image.asset("images/dice$dicenNumberRight.png"),
            ),
          ),
        ],
      ),
    );
  }
}



// class Counter extends StatefulWidget {
//   const Counter({Key? key}) : super(key: key);

//   @override
//   State<Counter> createState() => _CounterState();
// }

// class _CounterState extends State<Counter> {
//   int count = 0;
//   int countdown = 100;

// void setCounter(){
//   setState(() => count++ );
// }

// void subtractCounter(){
//   setState(() => count-- );
// }

//   @override
//   Widget build(BuildContext context) {
//     return  MaterialApp(
//       home: SafeArea(
//         child: Center(
//           child: Column(
//             children: [
//               Text("$count"),
//               ElevatedButton = ElevatedButton(
//                 onPressed: (() => {
//                   addCounter(),
//                 }
//                 ),
//               child: const Text("Count button"),
//               );
//                ElevatedButton = ElevatedButton(
//                 onPressed: (() => {
//                   subtractCounter(),
//                 }
//                 ),
//               child: const Text("Remove 1"),
//               );
//             ],
//           )
//           ),
//         ),
//         );
//   }
// }