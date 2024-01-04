import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_workout/controller/main_controller.dart';
import 'package:getx_workout/global/global_button_widget.dart';
import 'package:getx_workout/locator/locator.dart';
import 'package:getx_workout/router/app_router.dart';
import 'package:getx_workout/screens/post/post_screen.dart';
import 'package:getx_workout/screens/second/second_screen.dart';

class HomeButtonsWidget extends StatelessWidget {

  const HomeButtonsWidget({ super.key });

   @override
   Widget build(BuildContext context) {
    final MainController mainController = Get.put(locator.get<MainController>());
       return Column(
        children: [
          GlobalButtonWidget(
              onPressed: () {
                mainController.incrementCounter();
              },
              text: 'Increment !!!',
            ),
            GlobalButtonWidget(
              onPressed: () {
                AppRouter.go(
                  context,
                  const SecondScreen(),
                );
              },
              text: 'Change Screen',
            ),
            GlobalButtonWidget(
              text: "Fetch Datas from Network!!!",
              onPressed: () {
                mainController.fetchDatas();
                AppRouter.go(
                  context,
                  const PostScreen(),
                );
              },
            ),
        ],
       );
  }
}