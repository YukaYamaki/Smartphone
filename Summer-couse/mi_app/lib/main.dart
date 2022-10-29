// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';

void main() {
  runApp(const MiCard());
}

class MiCard extends StatelessWidget {
  const MiCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 195, 252, 217),
          appBar: AppBar(
            backgroundColor:Color.fromARGB(255, 153, 240, 186),
            title: const Text(
              "MiCard",
               style: TextStyle(
                fontFamily: 'Saira',
                color: Color.fromARGB(255, 69, 60, 56)
               ),
            ),
          ),
          body: Center( //single child widgte
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CircleAvatar(
                  radius: 90,
                  backgroundImage: AssetImage("images/Yuka_Yamaki.jpg"),
                ),
                Text("Yuka Yamaki",
                style: TextStyle(
                  fontFamily: "PlayfairDisplay",
                  fontSize: 40,
                  color: Color.fromARGB(255, 69, 60, 56)
                  ),
                ),
                Text(
                  "Teaching Assistant",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 69, 60, 56)
                  ),
                ),
                SizedBox(
                  height: 20,
                  width: 150,
                  child: Divider(
                    color: Color.fromARGB(255, 69, 60, 56),
                    thickness: 1,
                  ),
                ),
                CustomCard(
                  card_icon: Icons.phone,
                  card_text: "0909090"
                ),
                CustomCard(
                  card_icon: Icons.email,
                  card_text: "yuka.yamaki@sun-asterisk.com"
                ),
                 
                
              ],
            ),
          ),
        ),
      ),    
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key, required this.card_icon, required this.card_text}) : super(key: key);

 final IconData card_icon;
 final String card_text;

  @override
  Widget build(BuildContext context) {
    return Card(
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                  child: ListTile(
                    leading: Icon(
                      card_icon,
                      ),
                    title: Text(card_text,
                    ),
                  )
                );
  }
}


// class MiCard extends StatelessWidget {
//   const MiCard({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: SafeArea(
//         child: Scaffold(
//           backgroundColor: const Color.fromARGB(255, 195, 252, 217),
//           appBar: AppBar(
//             backgroundColor:Color.fromARGB(255, 153, 240, 186),
//             title: const Text(
//               "MiCard",
//                style: TextStyle(
//                 fontFamily: 'Saira',
//                 color: Color.fromARGB(255, 69, 60, 56)
//                ),
//             ),
//           ),
//           body: Center( //single child widgte
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: const [
//                 CircleAvatar(
//                   radius: 90,
//                   backgroundImage: AssetImage("images/Yuka_Yamaki.jpg"),
//                 ),
//                 Text("Yuka Yamaki",
//                 style: TextStyle(
//                   fontFamily: "PlayfairDisplay",
//                   fontSize: 40,
//                   color: Color.fromARGB(255, 69, 60, 56)
//                   ),
//                 ),
//                 Text(
//                   "Teaching Assistant",
//                   style: TextStyle(
//                     fontSize: 15,
//                     color: Color.fromARGB(255, 69, 60, 56)
//                   ),
//                 ),
//                 SizedBox(
//                   height: 20,
//                   width: 150,
//                   child: Divider(
//                     color: Color.fromARGB(255, 69, 60, 56),
//                     thickness: 1,
//                   ),
//                 ),
//                 Card(
//                   margin: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
//                   child: ListTile(
//                     leading: Icon(
//                       Icons.phone,
//                       ),
//                     title: Text("+08 080-0000-0000"),
//                   ),
//                 ),
//                 Card(
//                   margin: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
//                   child: ListTile(
//                     leading: Icon(
//                       Icons.email,
//                       ),
//                     title: Text("yuka.yamaki@sun-asterisk.com"),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),    
//     );
//   }
// }