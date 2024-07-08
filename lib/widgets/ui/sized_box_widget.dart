import 'package:flutter/material.dart';

class SizedBoxWidget extends StatelessWidget {
  const SizedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SizedBox'),
      ),
      body: const Column(
        children: [
          Center(
            child: SizedBox(
              height: 200,
              width: 300,
              child: Card(
                color: Colors.red,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'height: 200\nwidth: 300',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: SizedBox.expand(
              child: Card(
                color: Colors.red,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'SizedBox.expand',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
