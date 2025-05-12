import 'package:flutter/material.dart';
import 'package:random_app_color_oskar/domain/services/color_service.dart';

/// Home page that allows changing background color on tap
class HomePage extends StatefulWidget {
  /// Creates a [HomePage] widget
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const _initialColor = Colors.white;

  late Color _backgroundColor;
  final ColorService _colorService = ColorService();

  @override
  void initState() {
    super.initState();
    _backgroundColor = _initialColor;
  }

  void _changeBackgroundColor() {
    setState(() {
      _backgroundColor = _colorService.generateUniqueColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changeBackgroundColor,
      child: Scaffold(
        backgroundColor: _backgroundColor,
        body: const Center(
          child: Text(
            'Hello there',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}