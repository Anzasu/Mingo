import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mingo/back%20end/user.dart';
import 'package:mingo/design%20constraints/color.dart';
import 'package:mingo/pages/homepage.dart';
import 'package:mingo/pages/palValues.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => SettingsState();
}

class SettingsState extends State<SettingsPage> {
  //temporary storage of user input values. The variables will be set to a default value
  double _weight = 40.5;
  String _gender = "Choose";
  int _age = 13;
  double _palValue = 1.6;
  String _goal = "Choose";

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/alt.jpg'), fit: BoxFit.cover),
      ),
      child: SingleChildScrollView(
        child: Center(
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
                    style: GoogleFonts.montserrat(fontSize: 29, color: text),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Card(
                color: lightWidget,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "Weight in kg (choose the value \nclosest to your actual weight )",
                    style: GoogleFonts.montserrat(fontSize: 22, color: text),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: DropdownButton<double>(
                    value: _weight,
                    //elevation: 5,
                    iconEnabledColor: altText,
                    items: <DropdownMenuItem<double>>[
                      for (double i = 30.0; i <= 110.5; i += 0.5)
                        DropdownMenuItem<double>(
                          value: i,
                          child: Text(
                            i.toString(),
                            style: GoogleFonts.montserrat(
                                fontSize: 22, color: altText),
                          ),
                        ),
                    ],

                    onChanged: (value) {
                      setState(() {
                        _weight = value!;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                color: lightWidget,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "Age (in years)",
                    style: GoogleFonts.montserrat(fontSize: 22, color: text),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: DropdownButton<int>(
                    value: _age,
                    //elevation: 5,
                    iconEnabledColor: altText,
                    items: <int>[
                      0,
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
                          style: GoogleFonts.montserrat(
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
              SizedBox(
                height: 20,
              ),
              Card(
                color: lightWidget,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "Gender",
                    style: GoogleFonts.montserrat(fontSize: 22, color: text),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: DropdownButton<String>(
                    value: _gender,
                    //elevation: 5,
                    iconEnabledColor: altText,

                    items: <String>[
                      'Choose',
                      'Male',
                      'Female',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: GoogleFonts.montserrat(
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
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: lightWidget, fixedSize: Size(350, 90)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PALValuesPage()),
                  );
                },
                child: Text(
                  "PAL value (Click to determine \nsuitable value)",
                  style: GoogleFonts.montserrat(fontSize: 22, color: text),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: DropdownButton<double>(
                    value: _palValue,
                    //elevation: 5,
                    iconEnabledColor: altText,
                    items: <double>[1.2, 1.4, 1.6, 1.8, 2.0]
                        .map<DropdownMenuItem<double>>((double value) {
                      return DropdownMenuItem<double>(
                        value: value,
                        child: Text(
                          value.toString(),
                          style: GoogleFonts.montserrat(
                              fontSize: 22, color: altText),
                        ),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        _palValue = value!;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                color: lightWidget,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "Goal",
                    style: GoogleFonts.montserrat(fontSize: 22, color: text),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: DropdownButton<String>(
                    value: _goal,
                    //elevation: 5,
                    iconEnabledColor: altText,

                    items: <String>[
                      'Choose',
                      'Loose weight fast',
                      'Loose weight',
                      'Maintain weight',
                      'Gain weight',
                      'Build muscles',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: GoogleFonts.montserrat(
                              fontSize: 22, color: altText),
                        ),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        _goal = value!;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    backgroundColor: darkWidget, fixedSize: Size(300, 60)),
                onPressed: () {
                  user.weight = _weight;
                  user.age = _age;
                  user.gender = _gender;
                  user.palValue = _palValue;
                  user.goal = _goal;

                  user.calculateQuantities();

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Homepage()),
                  );
                },
                icon: Icon(
                  Icons.save,
                  size: 30.0,
                  color: text,
                ),
                label: Text(
                  "Save and go back",
                  style: GoogleFonts.montserrat(fontSize: 22, color: text),
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
