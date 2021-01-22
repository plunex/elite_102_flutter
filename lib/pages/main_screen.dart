import 'package:elite/unsplash.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Unsplash(),
        ],
      ),
    );
  }
}
