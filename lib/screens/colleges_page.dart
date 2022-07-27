// import 'package:college_app/screens/first_page.dart';
// import 'package:college_app/widgets/colleges_body.dart';
// import 'package:flutter/material.dart';

// import '../widgets/tab_bar_item.dart';

// class CollegesPage extends StatelessWidget {
//   const CollegesPage({Key? key}) : super(key: key);

//   List<Widget> _buildScreens() {
//     // return const [
//       CollegesBody(),
//       Center(child: Text("2nd Screen")),
//       Center(child: Text("3rd Screen")),
//       Center(child: Text("4th Screen")),
//     ];
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: DefaultTabController(
//         length: 4,
//         child: Scaffold(
//           body: TabBarView(
//             children: _buildScreens(),
//           ),
//           bottomNavigationBar: Container(
//             decoration: const BoxDecoration(
//                 color: Color.fromRGBO(
//               14,
//               60,
//               110,
//               1,
//             )),
//             padding: const EdgeInsets.all(10),
//             child: const TabBar(
//                 // indicator: CircleTab,
//                 indicatorWeight: 3,
//                 indicatorColor: Color.fromRGBO(
//                   255,
//                   255,
//                   255,
//                   1,
//                 ),
//                 labelColor: Color.fromRGBO(187, 187, 187, 1),
//                 tabs: [
//                   TabBarItem(Icons.home_filled, 'Search'),
//                   TabBarItem(Icons.bookmark, 'saved'),
//                   TabBarItem(Icons.data_saver_off, 'saved'),
//                   TabBarItem(Icons.person, 'account'),
//                 ]),
//           ),
//         ),
//       ),
//     );
//   }
// }
