import 'package:flutter/material.dart';
import 'package:random_app_color_oskar/core/utils/color_generator.dart';

/// Service responsible for generating unique colors
class ColorService {
  /// Generates a unique color using [ColorGenerator]
  Color generateUniqueColor() {
    return Color(ColorGenerator.generateRandomColor());
  }
}