import 'package:flutter/material.dart';

import '../../../widgets/checkbox_widget.dart';
import '../../../widgets/input_text_widget.dart';
import '../home_controller.dart';

class HelpTextSettings extends StatelessWidget {
  final HomeController controller;

  const HelpTextSettings({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Help Text Settings:',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 15),
        CheckboxWidget(
          text: 'Help Text Enabled:',
          initialValue: true,
          onChanged: (value) => controller.onChange(helpTextEnabled: value),
        ),
        const SizedBox(height: 5),
        InputTextWidget(
          label: 'Help Text Color:',
          initialValue: '#FFFFFF',
          onChanged: (value) => controller.onChange(helpTextColor: value),
        ),
        const SizedBox(height: 15),
        InputTextWidget(
          label: 'Help Text Size:',
          initialValue: '14',
          onChanged: (value) => controller.onChange(helpTextSize: value),
          keyboardType: TextInputType.number,
        ),
        const SizedBox(height: 15),
        InputTextWidget(
          label: 'Left Hand Message:',
          initialValue:
              'Place your left hand (without the thumb) until the marker is centered.',
          onChanged: (value) =>
              controller.onChange(helpTextLeftHandMessage: value),
        ),
        const SizedBox(height: 15),
        InputTextWidget(
          label: 'Right Hand Message:',
          initialValue:
              'Place your right hand (without the thumb) until the marker is centered.',
          onChanged: (value) =>
              controller.onChange(helpTextRightHandMessage: value),
        ),
        const SizedBox(height: 15),
        InputTextWidget(
          label: 'Thumbs Message:',
          initialValue: 'Place your thumbs until the marker is centered.',
          onChanged: (value) =>
              controller.onChange(helpTextThumbsMessage: value),
        ),
      ],
    );
  }
}
