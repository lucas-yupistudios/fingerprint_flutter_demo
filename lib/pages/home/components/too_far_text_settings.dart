import 'package:flutter/material.dart';

import '../../../widgets/checkbox_widget.dart';
import '../../../widgets/input_text_widget.dart';
import '../home_controller.dart';

class TooFarTextSettings extends StatelessWidget {
  final HomeController controller;

  const TooFarTextSettings({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Too Far Text Settings:',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 15),
        CheckboxWidget(
          text: 'Too Far Text Enabled:',
          initialValue: true,
          onChanged: (value) => controller.onChange(tooFarTextEnabled: value),
        ),
        const SizedBox(height: 5),
        InputTextWidget(
          label: 'Too Far Text Content:',
          initialValue: 'Too far',
          onChanged: (value) => controller.onChange(tooFarTextContent: value),
        ),
        const SizedBox(height: 15),
        InputTextWidget(
          label: 'Too Far Text Color:',
          initialValue: '#FFFFFF',
          onChanged: (value) => controller.onChange(tooFarTextColor: value),
        ),
        const SizedBox(height: 15),
        InputTextWidget(
          label: 'Too Far Text Size:',
          initialValue: '14',
          onChanged: (value) => controller.onChange(tooFarTextSize: value),
          keyboardType: TextInputType.number,
        ),
      ],
    );
  }
}
