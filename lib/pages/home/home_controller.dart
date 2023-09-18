import 'dart:typed_data';

import 'package:biopassid_fingerprint_sdk/biopassid_fingerprint_sdk.dart';
import 'package:flutter/material.dart';

import '../../utils/color_util.dart';
import 'utils/enum_util.dart';

class HomeController extends ChangeNotifier {
  final FingerprintConfig config =
      FingerprintConfig(licenseKey: 'your-license-key');

  final formKey = GlobalKey<FormState>();

  List<Uint8List> fingers = [];

  void takeFingerprint() async {
    final form = formKey.currentState;
    if (form!.validate()) {
      final controller = FingerprintController(
        config: config,
      );
      final images = await controller.takeFingerprint();
      print('Fingerprint: ${images[0]}');
      fingers = images;
      notifyListeners();
    }
  }

  void onChange({
    String? captureType,
    String? outputType,
    String? numberOfFingers,
    bool? showFingerEllipseView,
    bool? showDistanceIndicatorView,
    String? overlayColor,
    String? fingerColor,
    String? distanceIndicatorLineColor,
    String? distanceIndicatorHighlightColor,
    bool? helpTextEnabled,
    String? helpTextColor,
    String? helpTextSize,
    String? helpTextLeftHandMessage,
    String? helpTextRightHandMessage,
    String? helpTextThumbsMessage,
    bool? tooCloseTextEnabled,
    String? tooCloseTextContent,
    String? tooCloseTextColor,
    String? tooCloseTextSize,
    bool? tooFarTextEnabled,
    String? tooFarTextContent,
    String? tooFarTextColor,
    String? tooFarTextSize,
    bool? backButtonEnabled,
    String? backButtonBackgroundColor,
    String? backButtonPadding,
    String? backButtonSize,
    bool? backButtonIconEnabled,
    String? backButtonIconColor,
    String? backButtonIconSize,
    bool? backButtonLabelEnabled,
    String? backButtonLabelContent,
    String? backButtonLabelColor,
    String? backButtonLabelSize,
  }) {
    if (captureType != null) {
      config.captureType = CaptureTypeUtil.fromString(captureType);
    }
    if (outputType != null) {
      config.outputType = OutputTypeUtil.fromString(outputType);
    }
    if (numberOfFingers != null) {
      final value = int.tryParse(numberOfFingers);
      if (value != null) {
        config.numberFingersToCapture = value;
      }
    }
    if (showFingerEllipseView != null) {
      config.showFingerEllipseView = showFingerEllipseView;
    }
    if (showDistanceIndicatorView != null) {
      config.showDistanceIndicatorView = showDistanceIndicatorView;
    }
    if (overlayColor != null) {
      final value = ColorUtil.fromHex(overlayColor);
      if (value != null) {
        config.overlayColor = value;
      }
    }
    if (fingerColor != null) {
      final value = ColorUtil.fromHex(fingerColor);
      if (value != null) {
        config.fingerColor = value;
      }
    }
    if (distanceIndicatorLineColor != null) {
      final value = ColorUtil.fromHex(distanceIndicatorLineColor);
      if (value != null) {
        config.distanceIndicatorLineColor = value;
      }
    }
    if (distanceIndicatorHighlightColor != null) {
      final value = ColorUtil.fromHex(distanceIndicatorHighlightColor);
      if (value != null) {
        config.distanceIndicatorHighlightColor = value;
      }
    }
    if (helpTextEnabled != null) {
      config.helpText.enabled = helpTextEnabled;
    }
    if (helpTextColor != null) {
      final value = ColorUtil.fromHex(helpTextColor);
      if (value != null) {
        config.helpText.textColor = value;
      }
    }
    if (helpTextSize != null) {
      final value = int.tryParse(helpTextSize);
      if (value != null) {
        config.helpText.textSize = value;
      }
    }
    if (helpTextLeftHandMessage != null) {
      config.helpText.messages.leftHandMessage = helpTextLeftHandMessage;
    }
    if (helpTextRightHandMessage != null) {
      config.helpText.messages.rightHandMessage = helpTextRightHandMessage;
    }
    if (helpTextThumbsMessage != null) {
      config.helpText.messages.thumbsMessage = helpTextThumbsMessage;
    }
    if (tooCloseTextEnabled != null) {
      config.tooCloseText.enabled = tooCloseTextEnabled;
    }
    if (tooCloseTextContent != null) {
      config.tooCloseText.content = tooCloseTextContent;
    }
    if (tooCloseTextColor != null) {
      final value = ColorUtil.fromHex(tooCloseTextColor);
      if (value != null) {
        config.tooCloseText.textColor = value;
      }
    }
    if (tooCloseTextSize != null) {
      final value = int.tryParse(tooCloseTextSize);
      if (value != null) {
        config.tooCloseText.textSize = value;
      }
    }
    if (tooFarTextEnabled != null) {
      config.tooFarText.enabled = tooFarTextEnabled;
    }
    if (tooFarTextContent != null) {
      config.tooFarText.content = tooFarTextContent;
    }
    if (tooFarTextColor != null) {
      final value = ColorUtil.fromHex(tooFarTextColor);
      if (value != null) {
        config.tooFarText.textColor = value;
      }
    }
    if (tooFarTextSize != null) {
      final value = int.tryParse(tooFarTextSize);
      if (value != null) {
        config.tooFarText.textSize = value;
      }
    }
    if (backButtonEnabled != null) {
      config.backButton.enabled = backButtonEnabled;
    }
    if (backButtonBackgroundColor != null) {
      final value = ColorUtil.fromHex(backButtonBackgroundColor);
      if (value != null) {
        config.backButton.backgroundColor = value;
      }
    }
    if (backButtonPadding != null) {
      final value = int.tryParse(backButtonPadding);
      if (value != null) {
        config.backButton.buttonPadding = value;
      }
    }
    if (backButtonSize != null) {
      final value = int.tryParse(backButtonSize);
      if (value != null) {
        config.backButton.buttonSize = Size(value.toDouble(), value.toDouble());
      }
    }
    if (backButtonIconEnabled != null) {
      config.backButton.iconOptions.enabled = backButtonIconEnabled;
    }
    if (backButtonIconColor != null) {
      final value = ColorUtil.fromHex(backButtonIconColor);
      if (value != null) {
        config.backButton.iconOptions.iconColor = value;
      }
    }
    if (backButtonIconSize != null) {
      final value = int.tryParse(backButtonIconSize);
      if (value != null) {
        config.backButton.iconOptions.iconSize =
            Size(value.toDouble(), value.toDouble());
      }
    }
    if (backButtonLabelEnabled != null) {
      config.backButton.labelOptions.enabled = backButtonLabelEnabled;
    }
    if (backButtonLabelContent != null) {
      config.backButton.labelOptions.content = backButtonLabelContent;
    }
    if (backButtonLabelColor != null) {
      final value = ColorUtil.fromHex(backButtonLabelColor);
      if (value != null) {
        config.backButton.labelOptions.textColor = value;
      }
    }
    if (backButtonLabelSize != null) {
      final value = int.tryParse(backButtonLabelSize);
      if (value != null) {
        config.backButton.labelOptions.textSize = value;
      }
    }
  }
}
