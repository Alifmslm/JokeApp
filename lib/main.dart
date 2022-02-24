import 'package:flutter/material.dart';
import 'package:joke_app/screen_awal.dart';
import 'package:joke_app/detail_screen.dart';
import 'package:joke_app/jokes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Jokes App'),
        ),
        body: ScreenAwal(),
      ),
    );
  }
}
