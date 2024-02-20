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
    return Scaffold(
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          color: Colors.deepPurple,
            // Also there is a possibility to add padding directly to container:
            // padding: const EdgeInsets.all(8.0);
            // If Container has a child but no `height`, no `width`,
            // child sizes itself to match the size of parent.
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.yellow,
            ),
          )
        ),
      ),
      // body: Center(
      //   child: Container(
      //     width: 100,
      //     height: 100,
      //     color: Colors.deepPurple,
      //     child: Center(
      //       child: Text(
      //         'Hello World',
      //         textAlign: TextAlign.center,
      //         style: TextStyle(
      //           color: Colors.white,
      //           fontSize: 24,
      //           fontWeight: FontWeight.bold,
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
