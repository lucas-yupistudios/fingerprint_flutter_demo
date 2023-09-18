import 'package:flutter/material.dart';

extension ColorUtil on Color {
  static Color? fromHex(String hexString) {
    if (!RegExp(r'^#([0-9a-fA-F]{6}|[0-9a-fA-F]{8})$').hasMatch(hexString)) {
      return null;
    }
    return Color(
      int.parse(
        hexString
            .toUpperCase()
            .replaceFirst('#', hexString.length == 9 ? '0x' : '0xFF'),
      ),
    );
  }
}
