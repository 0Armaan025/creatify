import 'package:creatify/features/main/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/check_list_widget.dart';

class CheckListScreen extends StatefulWidget {
  const CheckListScreen({super.key});

  @override
  State<CheckListScreen> createState() => _CheckListScreenState();
}

class _CheckListScreenState extends State<CheckListScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: bgColor,
      appBar: makeCustomAppBar('Checklist!'),
      drawer: makeDrawer(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                "Checklist!",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Card(
                elevation: 2.0,
                child: Container(
                  color: Color(0xFF1D546F),
                  padding: const EdgeInsets.all(18),
                  child: Column(
                    children: [
                      CheckListWidget(
                        task: "Make a team",
                      ),
                      CheckListWidget(
                        task: "Plan an idea",
                      ),
                      CheckListWidget(
                        task: "Get the set up",
                      ),
                      CheckListWidget(task: "Start executing it"),
                      CheckListWidget(
                        size: 14.0,
                        task: "Collab with other creators",
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: size.width * 0.4,
                  height: size.height * 0.07,
                  alignment: Alignment.center,
                  child: Text('Give Up!',
                      style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600)),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF314B57),
                  ),
                ),
                Container(
                  width: size.width * 0.4,
                  height: size.height * 0.07,
                  alignment: Alignment.center,
                  child: Text('Nah!, the project\nis done!😎',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w600)),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF1C3A48),
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
