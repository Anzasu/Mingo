import 'package:flutter/material.dart';

class SoonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/home.jpg'), fit: BoxFit.cover),
      ),
      child: Column(),
    );
  }
}
