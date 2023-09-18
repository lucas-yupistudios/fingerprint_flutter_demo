import 'package:flutter/material.dart';

import '../../../widgets/button_widget.dart';
import '../home_controller.dart';
import 'back_button_settings.dart';
import 'general_settings.dart';
import 'help_text_settings.dart';
import 'too_close_text_settings.dart';
import 'too_far_text_settings.dart';

class FingerprintForm extends StatelessWidget {
  final HomeController controller;

  const FingerprintForm({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Column(
        children: [
          ButtonWidget(
            text: 'Capture Fingerprints',
            onPressed: controller.takeFingerprint,
          ),
          const SizedBox(height: 30),
          GeneralSettings(controller: controller),
          const SizedBox(height: 30),
          HelpTextSettings(controller: controller),
          const SizedBox(height: 30),
          TooCloseTextSettings(controller: controller),
          const SizedBox(height: 30),
          TooFarTextSettings(controller: controller),
          const SizedBox(height: 30),
          BackButtonSettings(controller: controller),
        ],
      ),
    );
  }
}
