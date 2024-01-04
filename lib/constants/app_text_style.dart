import 'package:flutter/material.dart';

class AppTextStyle {
  AppTextStyle._();

  static get numberStyle =>
      const TextStyle(fontSize: 25, fontWeight: FontWeight.bold);
  static get product => const TextStyle(
        fontSize: 21,
        overflow: TextOverflow.ellipsis
      );
  static get productID => const TextStyle(
        fontSize: 21,
        fontWeight: FontWeight.bold,
      );
}
