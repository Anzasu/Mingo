import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mingo/back%20end/user.dart';
import 'package:mingo/design%20constraints/color.dart';
import 'package:mingo/pages/homepage.dart';

class EssentialsPage extends StatefulWidget {
  const EssentialsPage({super.key});

  @override
  State<EssentialsPage> createState() => EssentialsState();
}

class EssentialsState extends State<EssentialsPage> {
  ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      backgroundColor: lightWidget, fixedSize: Size(350, 140));

  Icon waterIcon = Icon(
    Icons.circle_outlined,
    size: 30,
    color: text,
  );
  Icon fruVegIcon = Icon(
    Icons.circle_outlined,
    size: 30,
    color: text,
  );
  Icon carbsIcon = Icon(
    Icons.circle_outlined,
    size: 30,
    color: text,
  );
  Icon proteinsIcon = Icon(
    Icons.circle_outlined,
    size: 30,
    color: text,
  );
  Icon fatsIcon = Icon(
    Icons.circle_outlined,
    size: 30,
    color: text,
  );

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/alt.jpg'), fit: BoxFit.cover),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 130,
            ),
            Card(
              color: darkWidget,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  "Daily Essentials",
                  style: GoogleFonts.playfairDisplay(fontSize: 29, color: text),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Card(
              color: darkWidget,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  "To reach your goal, consume the following amounts daily. \n(If you have changed your data in the settings or if a new day has started, click on the refresh button)",
                  style: GoogleFonts.playfairDisplay(fontSize: 22, color: text),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(children: [
              SizedBox(
                width: 20,
              ),
              ElevatedButton.icon(
                style: buttonStyle,
                onPressed: () {
                  setState(() {
                    waterIcon = Icon(
                      Icons.check_circle_outline,
                      size: 30,
                      color: text,
                    );
                  });
                },
                icon: waterIcon,
                label: Text(
                  "2-3 liters of water or sugar free drinks \n(e.g. sugar free tea)",
                  style: GoogleFonts.playfairDisplay(fontSize: 25, color: text),
                ),
              ),
            ]),
            SizedBox(
              height: 40,
            ),
            Row(children: [
              SizedBox(
                width: 20,
              ),
              ElevatedButton.icon(
                style: buttonStyle,
                onPressed: () {
                  setState(() {
                    fruVegIcon = Icon(
                      Icons.check_circle_outline,
                      size: 30,
                      color: text,
                    );
                  });
                },
                icon: fruVegIcon,
                label: Text(
                  "5 portions of fruits and vegetables \n(e.g. berries and carrots)",
                  style: GoogleFonts.playfairDisplay(fontSize: 25, color: text),
                ),
              ),
            ]),
            SizedBox(
              height: 40,
            ),
            Row(children: [
              SizedBox(
                width: 20,
              ),
              ElevatedButton.icon(
                style: buttonStyle,
                onPressed: () {
                  setState(() {
                    proteinsIcon = Icon(
                      Icons.check_circle_outline,
                      size: 30,
                      color: text,
                    );
                  });
                },
                icon: proteinsIcon,
                label: Text(
                  user.proteins.toString() +
                      " g of healthy proteins \n(e.g. fish, egg)",
                  style: GoogleFonts.playfairDisplay(fontSize: 25, color: text),
                ),
              ),
            ]),
            SizedBox(
              height: 40,
            ),
            Row(children: [
              SizedBox(
                width: 20,
              ),
              ElevatedButton.icon(
                style: buttonStyle,
                onPressed: () {
                  setState(() {
                    carbsIcon = Icon(
                      Icons.check_circle_outline,
                      size: 30,
                      color: text,
                    );
                  });
                },
                icon: carbsIcon,
                label: Text(
                  user.carbs.toString() +
                      " g of healthy carbs \n(e.g. oat, whole grain bread)",
                  style: GoogleFonts.playfairDisplay(fontSize: 25, color: text),
                ),
              ),
            ]),
            SizedBox(
              height: 40,
            ),
            Row(children: [
              SizedBox(
                width: 20,
              ),
              ElevatedButton.icon(
                style: buttonStyle,
                onPressed: () {
                  setState(() {
                    fatsIcon = Icon(
                      Icons.check_circle_outline,
                      size: 30,
                      color: text,
                    );
                  });
                },
                icon: fatsIcon,
                label: Text(
                  user.fats.toString() +
                      " g of healthy fats \n(e.g. cheese, yoghurt, avocado)",
                  style: GoogleFonts.playfairDisplay(fontSize: 25, color: text),
                ),
              ),
            ]),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: darkWidget, fixedSize: Size(150, 60)),
                  icon: Icon(Icons.refresh, size: 30, color: text),
                  label: Text(
                    "Refresh",
                    style:
                        GoogleFonts.playfairDisplay(fontSize: 20, color: text),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EssentialsPage()),
                    );
                  },
                ),
                SizedBox(
                  width: 30,
                ),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: darkWidget, fixedSize: Size(150, 60)),
                  icon: Icon(Icons.arrow_back, size: 30, color: text),
                  label: Text(
                    "Back to home",
                    style:
                        GoogleFonts.playfairDisplay(fontSize: 20, color: text),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Homepage()),
                    );
                  },
                ),
              ],
            ),
            SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}
