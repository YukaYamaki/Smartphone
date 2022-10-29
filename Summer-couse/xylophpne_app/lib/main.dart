import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const Xylophone());
}

class Xylophone extends StatelessWidget {
  const Xylophone({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                colorTile(1, Colors.red),
                colorTile(2, Colors.orange),
                colorTile(3, Colors.yellow),
                colorTile(4, Colors.green),
                colorTile(5, Colors.blue),
                colorTile(6, Colors.indigo),
                colorTile(7, Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Expanded colorTile(int noteNumber, Color color) {
    return Expanded(
      child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: color),
                  onPressed: () {
                    AudioPlayer().play(AssetSource("note$noteNumber.wav"));
                  },
                  child: const Text(" "),
                ),
    );
  }
}
