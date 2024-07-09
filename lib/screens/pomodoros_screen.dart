import 'dart:async';
import 'package:flutter/material.dart';
import 'package:toonflix/constant/constant.dart';

class PomodorosScreen extends StatefulWidget {
  const PomodorosScreen({super.key});

  @override
  State<PomodorosScreen> createState() => _PomodorosScreenState();
}

class _PomodorosScreenState extends State<PomodorosScreen> {
  static const twentyFiveMinutes = 1500;
  int totalSeconds = twentyFiveMinutes;
  bool isRunning = false;
  int totalPomodoros = 0;
  late Timer timer;

  void onTick(Timer timer) {
    if (totalSeconds == 0) {
      totalPomodoros = totalPomodoros + 1;
      onReset();
    } else {
      setState(() {
        totalSeconds = totalSeconds - 1;
      });
    }
  }

  void onReset() {
    setState(() {
      isRunning = false;
      totalSeconds = twentyFiveMinutes;
    });
    timer.cancel();
  }

  void onStartPressed() {
    timer = Timer.periodic(
      const Duration(seconds: 1),
      onTick,
    );
    setState(() {
      isRunning = true;
    });
  }

  void onPausePressed() {
    timer.cancel();
    setState(() {
      isRunning = false;
    });
  }

  String timeFormat(int second) {
    var duration = Duration(seconds: second);
    return duration.toString().substring(2, 7);
    // return duration.toString().split(".").first.substring(2, 7);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: AppColors.lightBlue,
        foregroundColor: AppColors.white,
        title: const Text(
          AppString.titlePomodoros,
          style: TextStyle(
            fontSize: AppDimens.fontSize24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Text(
                timeFormat(totalSeconds),
                style: TextStyle(
                  color: Theme.of(context).cardColor,
                  fontSize: AppDimens.fontSize89,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: IconButton(
                    onPressed: isRunning ? onPausePressed : onStartPressed,
                    iconSize: AppDimens.dSize120,
                    color: Theme.of(context).cardColor,
                    icon: Icon(
                      isRunning
                          ? Icons.pause_circle_outline_outlined
                          : Icons.play_circle_outline,
                    ),
                  ),
                ),
                Center(
                  child: IconButton(
                    onPressed: isRunning ? () {} : onReset,
                    iconSize: AppDimens.dSize050,
                    color: isRunning
                        ? Theme.of(context).cardColor.withOpacity(0.4)
                        : Theme.of(context).cardColor,
                    icon: const Icon(
                      Icons.restore_outlined,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          AppString.titlePomodoros,
                          style: TextStyle(
                            fontSize: AppDimens.fontSize20,
                            fontWeight: FontWeight.w600,
                            color:
                                Theme.of(context).textTheme.displayLarge?.color,
                          ),
                        ),
                        Text(
                          '$totalPomodoros',
                          style: TextStyle(
                            fontSize: AppDimens.fontSize60,
                            fontWeight: FontWeight.w600,
                            color:
                                Theme.of(context).textTheme.displayLarge?.color,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
