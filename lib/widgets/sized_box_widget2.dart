import 'package:flutter/material.dart';
import 'package:toonflix/constant/constant.dart';

class SizedBoxWidget2 extends StatelessWidget {
  const SizedBoxWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SizedBox'),
      ),
      body: const Center(
        child: SizedBox.expand(
          child: Card(
            color: AppColors.red,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'SizedBox.expand',
                style: TextStyle(color: AppColors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
