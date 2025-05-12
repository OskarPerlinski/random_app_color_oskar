import 'package:flutter/material.dart';
import 'package:random_app_color_oskar/core/utils/color_generator.dart';

class ColorService {
  Color generateUniqueColor() {  
    return Color(ColorGenerator.generateRandomColor());
  }
}