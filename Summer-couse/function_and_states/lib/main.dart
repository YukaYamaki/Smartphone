import 'package:flutter/material.dart';

void main() {
  runApp(const Functions());
}


class Functions extends StatelessWidget {
  const Functions({Key? key}) : super(key: key);

  void SelfIntoduction(){
    print("I'm Yuka!");
    print("I'm 20 years old.");
    print("I like playing game!");
  }



  @override
  Widget build(BuildContext context) {
        return MaterialApp(
            home: SafeArea(
              child: ElevatedButton(
                onPressed: () => SelfIntoduction(),
                child: const Text("My Informaition"),
              ),
            ),
          );
  }
}