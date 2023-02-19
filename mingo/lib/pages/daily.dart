import 'package:flutter/material.dart';

class EssentialsPage extends StatefulWidget {
  const EssentialsPage({super.key});

  @override
  State<EssentialsPage> createState() => EssentialsState();
}

class EssentialsState extends State<EssentialsPage> {
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
