import 'dart:io';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:toonflix/screens/top_screen.dart';
import 'package:toonflix/screens/webtoon_screen.dart';
import 'package:toonflix/screens/pomodors_screen.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..userAgent =
          'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36';
  }
}

void main() {
  // Stateful lifecycle
  // runApp(const AppStateful());

  // POMODORS APP
  // runApp(const AppPomodors());

  // webtoon App
  HttpOverrides.global = MyHttpOverrides();
  // runApp(const AppToon());
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TopScreen(),
    );
  }
}

class AppToon extends StatelessWidget {
  const AppToon({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown,
        },
      ),
      home: WebToonScreen(),
    );
  }
}

class AppPomodors extends StatelessWidget {
  const AppPomodors({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFE7626C),
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            color: Color(0xFF232B55),
          ),
        ),
        cardColor: const Color(0xFFF4EDDB),
      ),
      home: const PomodorsScreen(),
    );
  }
}

// Stateful lifecycle
class AppStateful extends StatefulWidget {
  const AppStateful({super.key});

  @override
  State<AppStateful> createState() => _AppStatefulState();
}

class _AppStatefulState extends State<AppStateful> {
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
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
      home: Scaffold(
        backgroundColor: const Color(0xFFF4EDDB),
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
