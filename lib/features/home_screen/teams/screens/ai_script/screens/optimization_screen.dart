import 'dart:convert';

import 'package:creatify/features/main/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class OptimizationScreen extends StatefulWidget {
  const OptimizationScreen({super.key});

  @override
  State<OptimizationScreen> createState() => _OptimizationScreenState();
}

class _OptimizationScreenState extends State<OptimizationScreen> {
  String _generatedText = "";
  final _scriptController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void _onGeneratePressed(BuildContext context, String prompt) async {
    // showSnackBar(result);
  }

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
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "AI SCRIPT\nOPTIMIZATION!",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                maxLines: null,
                maxLength: 500,
                controller: _scriptController,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: InkWell(
                onTap: () {
                  _onGeneratePressed(context, _scriptController.text);
                },
                child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 70),
                    width: double.infinity,
                    height: size.height * 0.07,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Color(0xFF627984),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      "Optimize!",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
