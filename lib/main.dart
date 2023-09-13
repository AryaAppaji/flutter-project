import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Horizontal Scroll",
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: const HScroll(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HScroll extends StatelessWidget {
  const HScroll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HSController = new ScrollController();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Horizontal Scroll Example"),
      ),
      body: Scrollbar(
        controller: HSController,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Image.asset("assets/globe.jpg"),
            Image.asset("assets/globe1.jpg"),
            Image.asset("assets/globe2.jpg"),
            Image.asset("assets/globe3.jpg"),
          ],
        ),
      ),
    );
  }
}
