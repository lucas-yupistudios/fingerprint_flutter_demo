import 'package:flutter/material.dart';

import '../../../widgets/checkbox_widget.dart';
import '../../../widgets/dropdown_widget.dart';
import '../../../widgets/input_text_widget.dart';
import '../home_controller.dart';

class GeneralSettings extends StatelessWidget {
  final HomeController controller;

  const GeneralSettings({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'General Settings:',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 15),
        DropdownWidget(
          items: const ['leftHandFingers', 'rightHandFingers', 'thumbs'],
          initialValue: 'leftHandFingers',
          label: 'Capture Type:',
          onChanged: (value) => controller.onChange(captureType: value),
        ),
        const SizedBox(height: 15),
        DropdownWidget(
          items: const ['onlyCapture', 'captureAndSegmentation'],
          initialValue: 'captureAndSegmentation',
          label: 'Output Type:',
          onChanged: (value) => controller.onChange(outputType: value),
        ),
        const SizedBox(height: 15),
        DropdownWidget(
          items: const ['1', '2', '3', '4'],
          initialValue: '4',
          label: 'Number of Fingers:',
          onChanged: (value) => controller.onChange(numberOfFingers: value),
        ),
        const SizedBox(height: 5),
        CheckboxWidget(
          text: 'Finger Ellipse Enabled:',
          initialValue: true,
          onChanged: (value) =>
              controller.onChange(showFingerEllipseView: value),
        ),
        CheckboxWidget(
          text: 'Distance Indicator Enabled:',
          initialValue: true,
          onChanged: (value) =>
              controller.onChange(showDistanceIndicatorView: value),
        ),
        InputTextWidget(
          label: 'Overlay Color:',
          initialValue: '#80000000',
          onChanged: (value) => controller.onChange(overlayColor: value),
        ),
        const SizedBox(height: 15),
        InputTextWidget(
          label: 'Finger Color:',
          initialValue: '#80D6A262',
          onChanged: (value) => controller.onChange(fingerColor: value),
        ),
        InputTextWidget(
          label: 'Distance Indicator Line Color:',
          initialValue: '#FFFFFF',
          onChanged: (value) =>
              controller.onChange(distanceIndicatorLineColor: value),
        ),
        const SizedBox(height: 15),
        InputTextWidget(
          label: 'Distance Indicator Highlight Color:',
          initialValue: '#D6A262',
          onChanged: (value) =>
              controller.onChange(distanceIndicatorHighlightColor: value),
        ),
      ],
    );
  }
}
