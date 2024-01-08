import 'package:flutter/material.dart';

extension Sizes on BuildContext {
  Size get witdh => MediaQuery.of(this).size;
  Size get height => MediaQuery.of(this).size;
}
