import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double scale = 1.0;

  bool showImg1 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: GestureDetector(
            onDoubleTap: () {
              setState(() {
                if (showImg1) {
                  showImg1 = false;
                } else {
                  showImg1 = true;
                }
              });
            },
            onScaleUpdate: ((details) {
              setState(() {
                scale = details.scale;
              });
            }),
            child: Transform.scale(
              scale: scale,
              child: Center(
                child: Container(
                    width: 200,
                    // height: 100,
                    color: Colors.blue,
                    child: (showImg1)
                        ? Image.network(
                            "https://images.igdb.com/igdb/image/upload/t_cover_big/ss6bi7081my4mzebjkzb.png")
                        : Image.network(
                            "https://bocdn.ecotree.green/blog/0001/01/ad46dbb447cd0e9a6aeecd64cc2bd332b0cbcb79.jpeg?d=960x540")),
              ),
            ),
          ),
        ));
  }
}

// Tap, DoubleTap, LongPress
// child: GestureDetector(
//             onTap: () {
//               ScaffoldMessenger.of(context)
//                   .showSnackBar(SnackBar(content: Text("Taped")));
//             },
//             onDoubleTap: () {
//               ScaffoldMessenger.of(context)
//                   .showSnackBar(SnackBar(content: Text("DoubleTaped")));
//             },
//             onLongPress: () {
//               ScaffoldMessenger.of(context)
//                   .showSnackBar(SnackBar(content: Text("LongPressed")));
//             },
//             child: Container(
//               width: 100,
//               height: 100,
//               color: Colors.blue,
//             ),
//           ),
//         ))


// Scaling(Zoom in and Zoom out)
// double scale = 1.0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text(widget.title),
//         ),
//         body: Center(
//           child: GestureDetector(
//             onScaleUpdate: ((details) {
//               setState(() {
//                 scale = details.scale;
//               });
//             }),
//             child: Transform.scale(
//               scale: scale,
//               child: Center(
//                 child: Container(
//                   width: 200,
//                   height: 200,
//                   color: Colors.blue,
//                 ),
//               ),
//             ),
//           ),
//         ));
//   }
// }

// Draging
// class _MyHomePageState extends State<MyHomePage> {
//   Offset offset = Offset(0, 0);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text(widget.title),
//         ),
//         body: Center(
//           child: GestureDetector(
//             onPanUpdate: (details) {
//               setState(() {
//                 offset = Offset(
//                     offset.dx + details.delta.dx, offset.dy + details.delta.dy);
//               });
//             },
//             child: Transform.translate(
//               offset: offset,
//               child: Center(
//                 child: Container(
//                   width: 200,
//                   height: 200,
//                   color: Colors.blue,
//                 ),
//               ),
//             ),
//           ),
//         ));
//   }
// }
