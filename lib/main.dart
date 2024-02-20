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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  // If we have decoration, we must provide color in decoration!
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(
                      width: 2,
                      color: Colors.black,
                    ),
                  ),
                  width: 50,
                  height: 50,
                ),
                Container(
                  width: 120,
                  height: 120,
                  color: Colors.yellow,
                  child: Center(
                    child: Text(
                      'Yellow container',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.purple),
                    ),
                  ),
                ),
                Container(
                  // If we have decoration, we must provide color in decoration!
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(
                      width: 2,
                      color: Colors.blue,
                    ),
                  ),
                  width: 50,
                  height: 50,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.red,
                ),
                Container(
                  width: 70,
                  height: 70,
                  color: Colors.black,
                  // If Container has a child but no `height`, no `width`, child sizes itself to match the
                  // size of parent.
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.green,
                    ),
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.brown,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
