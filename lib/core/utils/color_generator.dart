import 'dart:math';

class ColorGenerator {
  static int generateRandomColor() {
    final random = Random();
    return 0xFF000000 + random.nextInt(0x00FFFFFF);
  }
}