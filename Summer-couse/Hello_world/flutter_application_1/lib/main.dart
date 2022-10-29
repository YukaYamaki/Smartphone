import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp( //won't change
      home: SafeArea(
        child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 145, 236, 248),
          body: Stack(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 100,
                width: 100,
                // margin: const EdgeInsets.all(10),
                // padding: const EdgeInsets.all(10),
                color: Colors.red,
                child: const Text("Box 1"),
                ),
              Container(
                height: 90,
                width: 90,
                // margin: const EdgeInsets.all(10),
                // padding: const EdgeInsets.all(10),
                color: Colors.yellow,
                child: const Text("Box 2"),
                ),
              Container(
                height: 80,
                width: 80,
                // margin: const EdgeInsets.all(10),
                // padding: const EdgeInsets.all(10),
                color: Colors.blue,
                child: const Text("Box 3"),
                ),
            ],
          ),
        ),
      ),
    ),
  );
}

// void main(){
//   runApp(
//     MaterialApp( //won't change
//       home: SafeArea(
//         child: Scaffold(
//           backgroundColor: const Color.fromARGB(255, 145, 236, 248),
//           appBar: AppBar(
//             title: const Text
//               ("Hello!",
//               style: TextStyle(
//                 color: Colors.orange,
//                 ),
//               ),

//             backgroundColor: Colors.yellow,
//             ),
//           body: const Center(
//             child: Text
//               ("Hello World", 
//               style: TextStyle(
//                 color: Colors.blue,
//                 fontSize: 30.0,
//                 decoration: TextDecoration.underline,
//                 fontWeight: FontWeight.w900,
//                 ),
//               ),
//             ),
//         ),
//       ),
//     ),
//   );
// }
