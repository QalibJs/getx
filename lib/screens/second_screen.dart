import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:getx_workout/constants/app_text_style.dart';
import 'package:getx_workout/controller/main_counter.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    final MainCounter counterIncrement = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${counterIncrement.count}",
              style: AppTextStyle.numberStyle,
            )
          ],
        ),
      ),
    );
  }
}
