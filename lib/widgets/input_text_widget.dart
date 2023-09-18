import 'package:flutter/material.dart';

class InputTextWidget extends StatelessWidget {
  final String label;
  final String? initialValue;
  final IconData? icon;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;

  const InputTextWidget({
    super.key,
    required this.label,
    this.initialValue,
    this.icon,
    this.validator,
    this.keyboardType,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      decoration: InputDecoration(
        labelText: label,
        icon: icon != null ? Icon(icon) : null,
      ),
      validator: validator,
      onChanged: onChanged,
      keyboardType: keyboardType,
    );
  }
}
