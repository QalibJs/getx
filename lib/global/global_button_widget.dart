import 'package:flutter/material.dart';

class GlobalButtonWidget extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  const GlobalButtonWidget({super.key, this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child:  Text(text),
    );
  }
}
