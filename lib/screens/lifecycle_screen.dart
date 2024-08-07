import 'package:flutter/material.dart';
import 'package:toonflix/constant/constant.dart';

class LifecycleScreen extends StatefulWidget {
  const LifecycleScreen({super.key});

  @override
  State<LifecycleScreen> createState() => _LifecycleScreenState();
}

class _LifecycleScreenState extends State<LifecycleScreen> {
  List<int> numbers = [];
  bool showTitle = true;
  bool showPopup = true;

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
      backgroundColor: AppColors.bgColorWhite,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: AppColors.lightBlue,
        foregroundColor: AppColors.white,
        title: const Text(
          AppString.titleLifeCycle,
          style: TextStyle(
            fontSize: AppDimens.fontSize24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            showTitle ? const MyLargeTitle() : const Text(AppString.nothing),
            IconButton(
              iconSize: AppDimens.dSize040,
              onPressed: toggleTitle,
              icon: const Icon(Icons.remove_red_eye),
            ),
            const Text(
              AppString.clickCount,
              style: TextStyle(fontSize: AppDimens.fontSize30),
            ),
            for (var n in numbers) Text('$n'),
            IconButton(
              iconSize: AppDimens.dSize040,
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
      AppString.titleLarge,
      style: TextStyle(
        fontSize: AppDimens.fontSize30,
        color: Theme.of(context).textTheme.titleLarge?.color ?? AppColors.blue,
      ),
    );
  }
}
