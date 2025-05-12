import 'package:random_app_color_oskar/core/utils/color_generator.dart';

class ColorService {
  int generateUniqueColor() {
    return ColorGenerator.generateRandomColor();
  }
}