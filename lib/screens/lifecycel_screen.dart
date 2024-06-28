import 'package:flutter/material.dart';

class LifecycelScreen extends StatefulWidget {
  const LifecycelScreen({super.key});

  @override
  State<LifecycelScreen> createState() => _LifecycelScreenState();
}

class _LifecycelScreenState extends State<LifecycelScreen> {
  List<int> numbers = [];
  bool showTitle = true;

  void toggleTitle() {
    setState(() {
      showTitle = !showTitle;
    });
  }

  void onClicked() {
    setState(() {
      numbers.add(numbers.length);
      // print(numbers);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4EDDB),
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.lightBlue,
        foregroundColor: Colors.white,
        title: const Text(
          "LifeCycle",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            showTitle ? const MyLargeTitle() : const Text('Nothing'),
            IconButton(
              iconSize: 40,
              onPressed: toggleTitle,
              icon: const Icon(Icons.remove_red_eye),
            ),
            const Text(
              'Click Count',
              style: TextStyle(fontSize: 30),
            ),
            for (var n in numbers) Text('$n'),
            IconButton(
              iconSize: 40,
              onPressed: onClicked,
              icon: const Icon(Icons.add_box_rounded),
            ),
          ],
        ),
      ),
    );
  }
}

class MyLargeTitle extends StatefulWidget {
  const MyLargeTitle({
    super.key,
  });

  @override
  State<MyLargeTitle> createState() => _MyLargeTitleState();
}

class _MyLargeTitleState extends State<MyLargeTitle> {
  @override
  void initState() {
    super.initState();
    // print('initState!');
  }

  @override
  void dispose() {
    //lifecycle
    super.dispose();
    // print('dispose!\n######');
  }

  @override
  Widget build(BuildContext context) {
    // print('build!');
    return Text(
      'My Large Title',
      style: TextStyle(
        fontSize: 30,
        color: Theme.of(context).textTheme.titleLarge?.color ?? Colors.blue,
      ),
    );
  }
}
