import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final Function()? onPressed;

  const ButtonWidget({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).primaryColor,
          foregroundColor: Colors.white,
        ),
        child: Text(text),
      ),
    );
  }
}
