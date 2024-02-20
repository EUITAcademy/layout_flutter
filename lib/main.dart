import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // return Scaffold(
    //   body: Center(
    //     child: Container(
    //       width: 200,
    //       height: 200,
    //       decoration: BoxDecoration(
    //       // If we use decoration we must use color inside decoration, not in container
    //         color: Colors.yellow,
    //         borderRadius: BorderRadius.circular(10),
    //         border: Border.all(
    //           color: Colors.black,
    //           width: 2,
    //         ),
    //       ),
    //     ),
    //   ),
    // );

    // return Scaffold(
    //   body: Center(
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //       // Won't make affect because it takes only size of children
    //       crossAxisAlignment: CrossAxisAlignment.center,
    //       children: [
    //         Container(
    //           width: 50,
    //           height: 50,
    //           color: Colors.yellow,
    //         ),
    //         Container(
    //           width: 50,
    //           height: 50,
    //           color: Colors.blue,
    //         ),
    //         Container(
    //           width: 50,
    //           height: 50,
    //           color: Colors.green,
    //         ),
    //       ],
    //     ),
    //   ),
    // );

    // return Scaffold(
    //   body: Center(
    //     child: Row(
    //       children: [
    //         Expanded(
    //           child: Container(
    //             color: Colors.yellow,
    //           ),
    //         ),
    //         Expanded(
    //           flex: 2,
    //           child: Container(
    //             color: Colors.blue,
    //           ),
    //         ),
    //         Expanded(
    //           flex: 4,
    //           child: Container(
    //             color: Colors.green,
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );

    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.yellow,
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: 150,
                height: 150,
                color: Colors.blue,
              ),
            ),
            Positioned(
              bottom: 50,
              right: 50,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
