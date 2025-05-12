import 'dart:math';

class ColorGenerator {
  static int generateRandomColor() {
    final random = Random();

    return random.nextInt(0xFFFFFF + 1);
  }
}
