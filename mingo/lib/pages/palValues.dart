import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mingo/design%20constraints/color.dart';
import 'package:mingo/pages/settings.dart';

class PALValuesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/home.jpg'), fit: BoxFit.cover),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Card(
                color: darkWidget,
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Text(
                    "  PAL = Physical Activity Level \n  For regular physical activity (e.g. \n  30-60 minutes of exercise/day), you \n  can add 0.3 PAL units to your value. ",
                    style: GoogleFonts.montserrat(fontSize: 22, color: text),
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                  backgroundColor: lightWidget, fixedSize: Size(300, 60)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsPage()),
                );
              },
              icon: Icon(
                Icons.arrow_back,
                size: 30.0,
                color: text,
              ),
              label: Text(
                "Back to Settings",
                style: GoogleFonts.montserrat(fontSize: 22, color: text),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              color: darkWidget,
              child: Padding(
                  padding: const EdgeInsets.all(3),
                  child: DataTable(
                    dataRowHeight: 150,
                    columns: [
                      DataColumn(
                        label: Text(
                          "Value",
                          style:
                              GoogleFonts.montserrat(fontSize: 22, color: text),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          "Description",
                          style:
                              GoogleFonts.montserrat(fontSize: 22, color: text),
                        ),
                      )
                    ],
                    rows: [
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text(
                            "1.2",
                            style: GoogleFonts.montserrat(
                                fontSize: 22, color: text),
                          )),
                          DataCell(Text(
                            "Exclusively sedentary or lying lifestyle",
                            style: GoogleFonts.montserrat(
                                fontSize: 20, color: text),
                          )),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text(
                            "1.4",
                            style: GoogleFonts.montserrat(
                                fontSize: 22, color: text),
                          )),
                          DataCell(Text(
                            "Exclusively sedentary job with little or no strenuous leisure activity",
                            style: GoogleFonts.montserrat(
                                fontSize: 20, color: text),
                          )),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text(
                            "1.6",
                            style: GoogleFonts.montserrat(
                                fontSize: 22, color: text),
                          )),
                          DataCell(Text(
                            "Sedentary work, at times also additional energy expenditure for walking or standing activity",
                            style: GoogleFonts.montserrat(
                                fontSize: 20, color: text),
                          )),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text(
                            "1.8",
                            style: GoogleFonts.montserrat(
                                fontSize: 22, color: text),
                          )),
                          DataCell(Text(
                            "Predominantly walking and standing work",
                            style: GoogleFonts.montserrat(
                                fontSize: 20, color: text),
                          )),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text(
                            "2.0",
                            style: GoogleFonts.montserrat(
                                fontSize: 22, color: text),
                          )),
                          DataCell(Text(
                            "Physically demanding professional work",
                            style: GoogleFonts.montserrat(
                                fontSize: 20, color: text),
                          )),
                        ],
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
