import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    home: SafeArea(
      child: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title:  const Text('Dicee'),
        ),
        body: const DicePage(),
      ),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() =>
   _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int diceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {},
              child: Text("$diceNumber"),
              ),
              )
        ],
        ),
    );
  }
}