import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:getx_workout/constants/app_text_style.dart';
import 'package:getx_workout/controller/main_counter.dart';
import 'package:getx_workout/global/global_button_widget.dart';
import 'package:getx_workout/locator/locator.dart';
import 'package:getx_workout/router/app_router.dart';
import 'package:getx_workout/screens/second_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final MainCounter counterIncrement =
        Get.put(locator.get<MainCounter>());
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                "${counterIncrement.count}",
                style: AppTextStyle.numberStyle,
              ),
            ),
            GlobalButtonWidget(
              onPressed: () {
                counterIncrement.incrementCounter();
              },
              text: '  Increment !!!  ',
            ),
            GlobalButtonWidget(
              onPressed: () {
                AppRouter.go(
                  context,
                  const SecondScreen(),
                );
              },
              text: 'Change Screen',
            )
          ],
        ),
      ),
    );
  }
}
