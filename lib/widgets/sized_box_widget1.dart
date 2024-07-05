import 'package:flutter/material.dart';
import 'package:toonflix/constant/constant.dart';

class SizedBoxWidget1 extends StatelessWidget {
  const SizedBoxWidget1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card'),
      ),
      body: const Center(
        child: SizedBox(
          height: 150,
          width: 200,
          child: Card(
            color: AppColors.red,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'height: 150\nwidth: 200',
                style: TextStyle(color: AppColors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
