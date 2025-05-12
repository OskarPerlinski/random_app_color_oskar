import 'dart:math';

/// Utility class for generating random colors
class ColorGenerator {
  /// Generates a random color in ARGB format with full opacity
  static int generateRandomColor() {
    final random = Random();
    return 0xFF000000 + random.nextInt(0x00FFFFFF);
  }
}