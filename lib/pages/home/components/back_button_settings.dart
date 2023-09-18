import 'package:flutter/material.dart';

import '../../../widgets/checkbox_widget.dart';
import '../../../widgets/input_text_widget.dart';
import '../home_controller.dart';

class BackButtonSettings extends StatelessWidget {
  final HomeController controller;

  const BackButtonSettings({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Back Button Settings:',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 15),
        CheckboxWidget(
          text: 'Back Button Enabled:',
          initialValue: true,
          onChanged: (value) => controller.onChange(backButtonEnabled: value),
        ),
        const SizedBox(height: 5),
        InputTextWidget(
          label: 'Back Button Background Color:',
          initialValue: '#00000000',
          onChanged: (value) =>
              controller.onChange(backButtonBackgroundColor: value),
        ),
        const SizedBox(height: 15),
        InputTextWidget(
          label: 'Back Button Padding:',
          initialValue: '10',
          onChanged: (value) => controller.onChange(backButtonPadding: value),
          keyboardType: TextInputType.number,
        ),
        const SizedBox(height: 15),
        InputTextWidget(
          label: 'Back Button Size:',
          initialValue: '56',
          onChanged: (value) => controller.onChange(backButtonSize: value),
          keyboardType: TextInputType.number,
        ),
        const SizedBox(height: 15),
        CheckboxWidget(
          text: 'Back Button Icon Enabled:',
          initialValue: true,
          onChanged: (value) =>
              controller.onChange(backButtonIconEnabled: value),
        ),
        const SizedBox(height: 5),
        InputTextWidget(
          label: 'Back Button Icon Color:',
          initialValue: '#FFFFFF',
          onChanged: (value) => controller.onChange(backButtonIconColor: value),
        ),
        const SizedBox(height: 15),
        InputTextWidget(
          label: 'Back Button Icon Size:',
          initialValue: '32',
          onChanged: (value) => controller.onChange(backButtonIconSize: value),
          keyboardType: TextInputType.number,
        ),
        const SizedBox(height: 15),
        CheckboxWidget(
          text: 'Back Button Label Enabled:',
          initialValue: false,
          onChanged: (value) =>
              controller.onChange(backButtonLabelEnabled: value),
        ),
        const SizedBox(height: 5),
        InputTextWidget(
          label: 'Back Button Label Content:',
          initialValue: 'Back',
          onChanged: (value) =>
              controller.onChange(backButtonLabelContent: value),
        ),
        const SizedBox(height: 15),
        InputTextWidget(
          label: 'Back Button Label Color:',
          initialValue: '#FFFFFF',
          onChanged: (value) =>
              controller.onChange(backButtonLabelColor: value),
        ),
        const SizedBox(height: 15),
        InputTextWidget(
          label: 'Back Button Label Size:',
          initialValue: '14',
          onChanged: (value) => controller.onChange(backButtonLabelSize: value),
          keyboardType: TextInputType.number,
        ),
      ],
    );
  }
}
