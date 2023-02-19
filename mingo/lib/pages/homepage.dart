import 'package:flutter/material.dart';
import 'package:mingo/design%20constraints/color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mingo/pages/daily.dart';
import 'package:mingo/pages/settings.dart';
import 'package:mingo/pages/soon.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/home.jpg'), fit: BoxFit.cover),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 112,
          ),
          Row(
            children: [
              SizedBox(
                width: 205,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: lightWidget, fixedSize: Size(140, 60)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SoonPage()),
                  );
                },
                child: Text(
                  "Journal",
                  style: GoogleFonts.playfairDisplay(fontSize: 29, color: text),
                ),
              ), // Journal
            ],
          ),
          SizedBox(
            height: 18,
          ),
          Row(
            children: [
              SizedBox(
                width: 15,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: lightWidget, fixedSize: Size(220, 60)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SoonPage()),
                  );
                },
                child: Text(
                  "Mood Tracker",
                  style: GoogleFonts.playfairDisplay(fontSize: 29, color: text),
                ),
              ), // Mood Tracker
            ],
          ),
          SizedBox(
            height: 110,
          ),
          Row(
            children: [
              SizedBox(
                width: 100,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: lightWidget, fixedSize: Size(200, 100)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EssentialsPage()),
                  );
                },
                child: Text(
                  "Daily Essentials",
                  style: GoogleFonts.playfairDisplay(fontSize: 29, color: text),
                ),
              ), // Essentials
            ],
          ),
          SizedBox(
            height: 80,
          ),
          Row(
            children: [
              SizedBox(
                width: 50,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: lightWidget, fixedSize: Size(150, 60)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SoonPage()),
                  );
                },
                child: Text(
                  "Recipes",
                  style: GoogleFonts.playfairDisplay(fontSize: 29, color: text),
                ),
              ), // Recipes
            ],
          ),
          SizedBox(
            height: 45,
          ),
          Row(
            children: [
              SizedBox(
                width: 200,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: lightWidget, fixedSize: Size(152, 60)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SettingsPage()),
                  );
                },
                child: Text(
                  "Settings",
                  style: GoogleFonts.playfairDisplay(fontSize: 29, color: text),
                ),
              ), // Settings
            ],
          ),
        ],
      ),
    );
  }
}
