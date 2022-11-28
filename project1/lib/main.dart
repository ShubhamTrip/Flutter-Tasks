import 'package:flutter/material.dart';
import 'package:project1/App%20Folder/welcome_screen.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            toolbarHeight: 0,
            backgroundColor: Colors.indigo,
          ),
          body: Welcome_Screen(),
      ),
    );
  }
}
