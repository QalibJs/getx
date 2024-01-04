import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_workout/controller/main_controller.dart';
import 'package:getx_workout/widgets/post/post_list_tile.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final MainController mainController = Get.find();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("APIs"),
      ),
      body: Obx(() {
        if (mainController.isLoading.value) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return ListView.builder(
          itemCount: mainController.postList.length,
          itemBuilder: (context, index) {
            final post = mainController.postList[index];
            return PostListTile(
              id: post.id!,
              postTitle: post.title!,
            );
          },
        );
      }),
    );
  }
}
