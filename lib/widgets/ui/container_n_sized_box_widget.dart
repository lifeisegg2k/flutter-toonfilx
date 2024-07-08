import 'package:flutter/material.dart';
class ContainerNSizedBoxWidget extends StatelessWidget {
  const ContainerNSizedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container & SizedBox'),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.red,
                border: Border.all(
                  width: 2,
                  color: Colors.black,
                ),
              ),
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  'Red Box',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                  ),
                ),
              ),
            ),
          ),
          const Center(
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
          const Center(
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
