import 'package:flutter/material.dart';
import 'package:random_app_color_oskar/domain/services/color_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Color _backgroundColor;
  final ColorService _colorService = ColorService();

  @override
  void initState() {
    super.initState();
    _backgroundColor = Colors.white;
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
