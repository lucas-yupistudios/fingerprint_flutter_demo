import 'package:flutter/material.dart';

import '../../../widgets/checkbox_widget.dart';
import '../../../widgets/input_text_widget.dart';
import '../home_controller.dart';

class TooCloseTextSettings extends StatelessWidget {
  final HomeController controller;

  const TooCloseTextSettings({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Too Close Text Settings:',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 15),
        CheckboxWidget(
          text: 'Too Close Text Enabled:',
          initialValue: true,
          onChanged: (value) => controller.onChange(tooCloseTextEnabled: value),
        ),
        const SizedBox(height: 5),
        InputTextWidget(
          label: 'Too Close Text Content:',
          initialValue: 'Too close',
          onChanged: (value) => controller.onChange(tooCloseTextContent: value),
        ),
        const SizedBox(height: 15),
        InputTextWidget(
          label: 'Too Close Text Color:',
          initialValue: '#FFFFFF',
          onChanged: (value) => controller.onChange(tooCloseTextColor: value),
        ),
        const SizedBox(height: 15),
        InputTextWidget(
          label: 'Too Close Text Size:',
          initialValue: '14',
          onChanged: (value) => controller.onChange(tooCloseTextSize: value),
          keyboardType: TextInputType.number,
        ),
      ],
    );
  }
}
