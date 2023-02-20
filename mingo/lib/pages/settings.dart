import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mingo/design%20constraints/color.dart';
import 'package:mingo/pages/palValues.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => SettingsState();
}

class SettingsState extends State<SettingsPage> {
  //temporary storage of user input values. The variables will be set to a random value
  double _weight = 90.0;
  String _gender = "Female";
  int _age = 20;
  double _palValue = 1.6;
  String _goal = "Maintain weight";

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
              height: 140,
            ),
            Card(
              color: darkWidget,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  "Settings",
                  style: GoogleFonts.playfairDisplay(fontSize: 29, color: text),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Card(
                  color: lightWidget,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      "Weight in kg \n(Choose the value closest to your weight))",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 22, color: text),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Card(
                  color: lightWidget,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      "Age (in years)",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 22, color: text),
                    ),
                  ),
                ),
              ],
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: DropdownButton<int>(
                  value: _age,
                  //elevation: 5,
                  iconEnabledColor: altText,
                  items: <int>[
                    13,
                    14,
                    15,
                    16,
                    17,
                    18,
                    19,
                    20,
                    21,
                    22,
                    23,
                    24,
                    25,
                    26,
                    27,
                    28,
                    29,
                    30,
                    31,
                    32,
                    33,
                    34,
                    35,
                    36,
                    37,
                    38,
                    39,
                    40,
                    41,
                    42,
                    43,
                    44,
                    45,
                    46,
                    47,
                    48,
                    49,
                    50,
                    51,
                    52,
                    53,
                    54,
                    55,
                    56,
                    57,
                    58,
                    59,
                    60,
                    61,
                    62,
                    63,
                    64,
                    65,
                    66,
                    67,
                    68,
                    69,
                    70,
                  ].map<DropdownMenuItem<int>>((int value) {
                    return DropdownMenuItem<int>(
                      value: value,
                      child: Text(
                        value.toString(),
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 22, color: altText),
                      ),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _age = value!;
                    });
                  },
                ),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Card(
                  color: lightWidget,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      "Gender",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 22, color: text),
                    ),
                  ),
                ),
              ],
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: DropdownButton<String>(
                  value: _gender,
                  //elevation: 5,
                  iconEnabledColor: altText,

                  items: <String>[
                    'Male',
                    'Female',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 22, color: altText),
                      ),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _gender = value!;
                    });
                  },
                ),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 24,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: lightWidget, fixedSize: Size(300, 60)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PALValuesPage()),
                    );
                  },
                  child: Text(
                    "PAL value (Click to determine suitable value)",
                    style:
                        GoogleFonts.playfairDisplay(fontSize: 22, color: text),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Card(
                  color: lightWidget,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      "Goal",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 22, color: text),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                SizedBox(
                  width: 45,
                ),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: darkWidget, fixedSize: Size(300, 80)),
                  onPressed: () {},
                  icon: Icon(
                    Icons.save,
                    size: 30.0,
                    color: text,
                  ),
                  label: Text(
                    "Save and go back",
                    style:
                        GoogleFonts.playfairDisplay(fontSize: 22, color: text),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
