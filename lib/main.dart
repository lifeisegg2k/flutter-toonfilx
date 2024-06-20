import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // CupertinoApp() iOS風
    // MaterialApp()  Android風
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Hello Flutter!',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: const Center(
          child: Text('Hello world!'),
        ),
      ),
    );
  }
}
