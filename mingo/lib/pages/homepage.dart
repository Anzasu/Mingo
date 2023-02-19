import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/home.png'), fit: BoxFit.cover),
      ),
      child: Column(
        children: [],
      ),
    );
  }
}
