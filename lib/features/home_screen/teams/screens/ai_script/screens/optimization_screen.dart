import 'dart:convert';

import 'package:clipboard/clipboard.dart';
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

  Future<String> generateText(String prompt) async {
    // Here we have to create body based on the document
    try {
      Map<String, dynamic> requestBody = {
        "model": "text-davinci-003",
        "prompt": prompt,
        "temperature": 0,
        "max_tokens": 100,
      };
      // Post Api Url
      var url = Uri.parse('https://api.openai.com/v1/completions');
      //  use post method of http and pass url,headers and body according to documents
      var response = await http.post(url,
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer $apiSecretKey"
          },
          body: json.encode(requestBody)); // post call
      // Checked we get the response or not
      // if status code is 200 then Api Call is Successfully Executed
      if (response.statusCode == 200) {
        var responseJson = json.decode(response.body);
        _generatedText = responseJson["choices"][0]["text"];

        return responseJson["choices"][0]["text"];
        setState(() {});
      } else {
        return "Failed to generate text: ${response.body}";
      }
    } catch (e) {
      return "Failed to generate text: $e";
    }
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
                  hintText: 'Write your script here to optimize',
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
                  final prompt =
                      "Optimize the script ${_scriptController.text}";
                  generateText(prompt);
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
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.all(18),
              child: Center(
                child: Text(
                  "The Optimized script is:- $_generatedText",
                  style: GoogleFonts.roboto(
                    color: Colors.grey[600],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.only(right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Copy this",
                    style: GoogleFonts.poppins(color: textColor),
                  ),
                  IconButton(
                    icon: Icon(Icons.copy),
                    onPressed: () {
                      FlutterClipboard.copy(_generatedText);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
