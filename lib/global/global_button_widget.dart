import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:getx_workout/constants/app_paddings.dart';
import 'package:sizer/sizer.dart';

class GlobalButtonWidget extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  const GlobalButtonWidget({super.key, this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppPaddings.lrt12,
      width: context.width,
      height: 8.h,
      child: ElevatedButton(
        onPressed: onPressed,
        child:  Text(text),
      ),
    );
  }
}
