// import 'package:flutter/material.dart';
//
// class Chat extends StatefulWidget {
//   const Chat({super.key});
//
//   @override
//   State<Chat> createState() => _ChatState();
// }
//
// class _ChatState extends State<Chat> with TickerProviderStateMixin {
//   late final TabController _tabController;
//
//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 5, vsync: this);
//   }
//
//   @override
//   void dispose() {
//     _tabController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: EdgeInsets.all(0),
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               Stack(
//                 children: [
//                   Container(
//                     width: 375,
//                     height: 140,
//                     child: Image.asset('assets/images/Mask Group.png'),
//                   ),
//                   Container(
//                     padding: EdgeInsets.fromLTRB(10, 83, 0, 0),
//                     child: Text(
//                       'Chat ',
//                       style: TextStyle(
//                         fontSize: 34,
//                         fontWeight: FontWeight.w500,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                   Container(
//                     padding: EdgeInsets.fromLTRB(310, 48, 0, 0),
//                     child: Image.asset(
//                       'assets/images/Group 66.png',
//                     ),
//                   )
//                 ],
//               ),
//               Padding(
//                   padding: EdgeInsets.all(8.0),
//                   child: Container(
//                     width: double.infinity,
//                     height: 40,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(30),
//                       color: Colors.grey,
//                     ),
//                     child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Container(
//                           padding: EdgeInsets.fromLTRB(13, 0, 0, 0),
//                           child: Icon(Icons.search),
//                         ),
//                         Container(
//                             width: 300,
//                             height: 40,
//                             decoration: BoxDecoration(
//                               border: Border.fromBorderSide(BorderSide.none),
//                             ),
//                             child: Center(
//                                 child: TextField(
//                               textAlign: TextAlign.start,
//                               decoration: InputDecoration(
//                                 border: InputBorder.none,
//                                 hintText: 'Search Chat',
//                               ),
//                               onTap: () {},
//                             )))
//                       ],
//                     ),
//                   )),
//               SizedBox(
//                 height: 350,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Future<void> searchChat() async {
//     try {} catch (e) {
//       print(e.toString());
//     }
//   }
// }
