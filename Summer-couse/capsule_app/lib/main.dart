import 'package:flutter/material.dart';

void main() {
  runApp(const CapsuleApp());
}

class CapsuleApp extends StatelessWidget {
  const CapsuleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
              backgroundColor: const Color.fromARGB(255, 243, 181, 255),
             title: const Text ("Capsule"
               ),
            ),
          backgroundColor: const Color.fromARGB(255, 162, 255, 165),
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                Container(
                    width: 150,
                    height: 150,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:  BorderRadius.horizontal(
                        left: Radius.circular(50),
                        ),
                      ),
                  ),
                Container(
                    width: 150,
                    height: 150,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 141),
                      borderRadius:  BorderRadius.horizontal(
                        right: Radius.circular(50),
                      ),
                    ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}