


// import 'package:flutter/material.dart';

// class Home extends StatelessWidget {
//   const Home({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: SafeArea(
//           child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(32.0),
//             child: Container(
//               height: 100,
//               width: 500,
              
//               child: TextFormField(
//                 decoration: InputDecoration(),
//               ),
//               decoration: const BoxDecoration(
//                   borderRadius: BorderRadius.all(Radius.circular(15)),
//                   color: Color.fromARGB(255, 15, 12, 12)),
//             ),
//           ),
//           Container(
//             margin: EdgeInsets.symmetric(horizontal: 32.0),
//             height: 60,
//             width: 500,
//             decoration: const BoxDecoration(
//                 borderRadius: BorderRadius.all(Radius.circular(15)),
//                 color: Colors.green),
//           ),
//           Container(
//             margin: EdgeInsets.symmetric(horizontal: 35),
//             height: 40,
//             decoration: const BoxDecoration(
//                 borderRadius: BorderRadius.all(Radius.circular(15)),
//                 color: Colors.blue),
//           ),
//           const Divider(
//             thickness: 5,
//             color: Colors.white10,
//           ),
//           SizedBox(
//             height: 480,
//             child: GridView.count(
//               crossAxisCount: 4,
//               shrinkWrap: true,
//               padding: const EdgeInsets.only(left: 24, right: 24),
//               children: [
//                 DialKey(number: 'C'),
//                 DialKey(number: '()'),
//                 DialKey(number: '%'),
//                 DialKey(number: '/'),
//                 DialKey(number: '7'),
//                 DialKey(number: '8'),
//                 DialKey(number: '9'),
//                 DialKey(number: '*'),
//                 DialKey(number: '4'),
//                 DialKey(number: '5'),
//                 DialKey(number: '6'),
//                 DialKey(number: '-'),
//                 DialKey(number: '1'),
//                 DialKey(number: '2'),
//                 DialKey(number: '3'),
//                 DialKey(number: '+'),
//                 DialKey(number: '+/-'),
//                 DialKey(number: '0'),
//                 DialKey(number: '.'),
//                 DialKey(number: '='),
//               ],
//             ),
//           )
//         ],
//       )),
//     );
//   }
// }

// class DialKey extends StatelessWidget {
//   final String number;

//   DialKey({required this.number});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: SizedBox(
//         width: 70,
//         height: 70,
//         child: FloatingActionButton(
//           onPressed: () {},
//           backgroundColor: Colors.grey[900],
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 number,
//                 style: const TextStyle(
//                     color: Colors.white,
//                     fontSize: 29,
//                     fontWeight: FontWeight.bold),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
