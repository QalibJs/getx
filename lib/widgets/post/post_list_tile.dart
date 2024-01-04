import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_workout/constants/app_paddings.dart';
import 'package:getx_workout/constants/app_sized_box.dart';
import 'package:getx_workout/constants/app_text_style.dart';

import 'package:sizer/sizer.dart';

class PostListTile extends StatelessWidget {
  final int id;
  final String postTitle;
  const PostListTile({super.key, required this.id, required this.postTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppPaddings.all4,
      margin: AppPaddings.lrt12,
      width: context.width,
      height: 7.h,
      color: Colors.grey,
      child: Row(children: [
        Text("$id.", style: AppTextStyle.productID),
        AppSizedBox.w10,
        Expanded(child: Text(postTitle, style: AppTextStyle.product)),
      ]),
    );
  }
}
