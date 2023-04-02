import 'package:flutter/material.dart';

enum AppColors {
  white(Colors.white),
  black(Colors.black),
  green(Colors.green),
  red(Colors.red),
  yellow(Colors.yellow),
  amber(Colors.amber),
  cyan(Colors.cyan),
  orange(Colors.orange),
  purple(Colors.purple),
  erase(Colors.transparent),
  pattern(null),
  gradient(null);

  const AppColors(this.color);

  final Color? color;
}
