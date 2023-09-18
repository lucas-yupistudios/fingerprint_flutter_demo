import 'package:biopassid_fingerprint_sdk/biopassid_fingerprint_sdk.dart';

extension CaptureTypeUtil on FingerprintCaptureType {
  static FingerprintCaptureType fromString(String captureTypeString) {
    return FingerprintCaptureType.values.firstWhere((element) =>
        element.toString() == 'FingerprintCaptureType.$captureTypeString');
  }
}

extension OutputTypeUtil on FingerprintOutputType {
  static FingerprintOutputType fromString(String outputTypeString) {
    return FingerprintOutputType.values.firstWhere((element) =>
        element.toString() == 'FingerprintOutputType.$outputTypeString');
  }
}
