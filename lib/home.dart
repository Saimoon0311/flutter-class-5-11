import 'dart:html';

import 'package:advancewidget/login.dart';
import 'package:advancewidget/sign.dart';
import 'package:flutter/material.dart';

//  LISTVIEW

// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);

//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView(
//         children: [
// abc("werwe"),
// abc("ooooo"),
//         ],
//       ),
//     );
//   }
// }

//  LISTVIEW.BUILDER

// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);

//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     var list = ["rrr", "ffff", "uuuu", "wwwww"];
//     var age = ["34","65","89","23","34"];
//     return Scaffold(
//         body: ListView.builder(
//             itemCount: list.length,
//             itemBuilder: (context, index) {
//               return ListTile(
//                 title: Text(list[index]),
//                 subtitle: Text(age[index]),
//               );
//             }));
//   }
// }

//  LISTVIEW.BUILDER WITH IMAGES

// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);

//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     var list = ["https://th.bing.com/th/id/R0d4be85659bb8f09a1b91c5c6731280a?rik=%2fIj%2beTewpTcylw&pid=ImgRaw", "https://th.bing.com/th/id/R0d4be85659bb8f09a1b91c5c6731280a?rik=%2fIj%2beTewpTcylw&pid=ImgRaw"];
//     var age = ["34", "65", "89", "23", "34"];
//     return Scaffold(
//         body: ListView.builder(
//             itemCount: list.length,
//             itemBuilder: (context, index) {
//               return Container(
//                 height: 200,
//                 width: 200,
//                 child: Image.network(list[index]),
//               );
//             }));
//   }
// }

//  GRARID VIEW.COUNT

// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);

//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     // var list = ["https://th.bing.com/th/id/R0d4be85659bb8f09a1b91c5c6731280a?rik=%2fIj%2beTewpTcylw&pid=ImgRaw", "https://th.bing.com/th/id/R0d4be85659bb8f09a1b91c5c6731280a?rik=%2fIj%2beTewpTcylw&pid=ImgRaw"];
//     var age = ["34", "65", "89", "23", "34"];
//     return Scaffold(
//         body: GridView.count(
//       crossAxisCount: 4,
//       crossAxisSpacing: 50,
//       mainAxisSpacing: 50,
//       children: List.generate(age.length, (index) {
//         return Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Container(
//             color: Colors.red,
//             child: Center(child: Text(age[index])),
//           ),
//         );
//       }),
//     ));
//   }
// }

// DRAWER NAVIGATION

// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);

//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     // var list = ["https://th.bing.com/th/id/R0d4be85659bb8f09a1b91c5c6731280a?rik=%2fIj%2beTewpTcylw&pid=ImgRaw", "https://th.bing.com/th/id/R0d4be85659bb8f09a1b91c5c6731280a?rik=%2fIj%2beTewpTcylw&pid=ImgRaw"];
//     var age = ["34", "65", "89", "23", "34"];
//     return Scaffold(
//      appBar: AppBar(title: Text("drawer example"),),
//      drawer: Drawer(child:ListView(
//        children: [
//          DrawerHeader(child: Container(
//           //  color: Colors.red,
//            child: Image.network("https://th.bing.com/th/id/R0d4be85659bb8f09a1b91c5c6731280a?rik=%2fIj%2beTewpTcylw&pid=ImgRaw"),
//          )),
//          GestureDetector(onTap: (){},child: ListTile(title: Text("data"),))
//        ],
//      ) ,),
//      );

//   }
// }

//  TAB NAVIGATION

// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);

//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 2,
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text("dkjhfkdhfkhd"),
//           bottom: TabBar(
//           unselectedLabelColor: Colors.red,
//           labelColor: Colors.green,
//           indicatorColor: Colors.brown,
//           tabs: [
//           Tab(child: Text("data"),),
//           Tab(child: Text("yeuiyrey"),)
//         ]),),
//         body: TabBarView(children: [
//           Login(),
//           Signup()
//         ]),
//       ),
//     );
//   }
// }

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var text = 1;
  one() {
    setState(() {
      text  += 1;
    });
  }

  // two() {
  //   setState(() {
  //     text = "2"; 
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          Text("Text: $text "),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(onPressed:one, child: Text("sdfsd ")),
          SizedBox(
            height: 20,
          ),
          // ElevatedButton(onPressed: two, child: Text("sdfsd ")),
        ],
      ),
    ));
  }
}

//  ADD ICON

// Widget abc(var name) {
//   return Container(
//     color: Colors.red,
//     height: 100,
//     child: Row(
//       children: [
//         Container(
//           color: Colors.blue,
//           height: 95,
//           width: 90,
//         ),
//         Padding(
//           padding: const EdgeInsets.only(left: 10.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(name),
//               Row(
//                 children: [
//                   Text(name),
//                   Icon(Icons.add),
//                 ],
//               ),
//               Text(name),
//             ],
//           ),
//         )
//       ],
//     ),
//   );
// }
