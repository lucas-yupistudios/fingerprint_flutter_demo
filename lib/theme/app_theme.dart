import 'package:flutter/material.dart';

ThemeData getAppTheme() {
  const primaryColor = Color(0XFFC59F64);
  final ThemeData theme = ThemeData();

  return theme.copyWith(
    colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
    useMaterial3: true,
    primaryColor: primaryColor,
  );
}
