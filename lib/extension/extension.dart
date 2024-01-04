import 'package:flutter/material.dart';

extension Sizes on BuildContext {
  double get witdh => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
}
