import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import '../../constants/app_text_style.dart';
import '../../controller/main_controller.dart';
import '../../locator/locator.dart';
import '../../widgets/home/home_buttons_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final MainController mainController = Get.put(locator.get<MainController>());
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                "${mainController.count}",
                style: AppTextStyle.numberStyle,
              ),
            ),
            const HomeButtonsWidget()
          ],
        ),
      ),
    );
  }
}
