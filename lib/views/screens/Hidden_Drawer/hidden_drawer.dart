// import 'package:flutter/material.dart';

// class HiddenDrawer extends StatefulWidget {
//   const HiddenDrawer({super.key});

//   @override
//   State<HiddenDrawer> createState() => _HiddenDrawerState();
// }

// class _HiddenDrawerState extends State<HiddenDrawer> {
//   bool isDrawerOpen = false;

//   void toggleDrawer() {
//     setState(() {
//       isDrawerOpen = !isDrawerOpen;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Hidden Drawer with Animation'),
//         leading: IconButton(
//           icon: Icon(Icons.menu),
//           onPressed: toggleDrawer,
//         ),
//       ),
//       body: Center(
//         child: Text('Main Content'),
//       ),
//       drawer: AnimatedContainer(
//         duration: Duration(milliseconds: 300),
//         transform: Matrix4.translationValues(
//           isDrawerOpen ? 0 : -MediaQuery.of(context).size.width * 0.7,
//           0,
//           0,
//         ),
//         child: Drawer(
//           child: ListView(
//             padding: EdgeInsets.zero,
//             children: <Widget>[
//               DrawerHeader(
//                 child: Text('Drawer Header'),
//                 decoration: BoxDecoration(
//                   color: Colors.blue,
//                 ),
//               ),
//               ListTile(
//                 title: Text('Item 1'),
//                 onTap: () {
//                   // Handle item 1 tap
//                 },
//               ),
//               ListTile(
//                 title: Text('Item 2'),
//                 onTap: () {
//                   // Handle item 2 tap
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
