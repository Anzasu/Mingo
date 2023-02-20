import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mingo/design%20constraints/color.dart';
import 'package:mingo/pages/homepage.dart';

class SoonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/alt.jpg'), fit: BoxFit.cover),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 400,
          ),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
                backgroundColor: lightWidget, fixedSize: Size(260, 130)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Homepage()),
              );
            },
            label: Text(
              "Coming soon! Stay tuned!",
              style: GoogleFonts.montserrat(fontSize: 29, color: text),
            ),
            icon: Icon(
              Icons.arrow_back,
              size: 30,
              color: text,
            ),
          ),
        ],
      ),
    );
  }
}
