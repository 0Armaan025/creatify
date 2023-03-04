import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckListWidget extends StatefulWidget {
  const CheckListWidget({super.key});

  @override
  State<CheckListWidget> createState() => _CheckListWidgetState();
}

class _CheckListWidgetState extends State<CheckListWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        width: double.infinity,
        height: size.height * 0.06,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Task 1 ",
              style: GoogleFonts.roboto(
                color: Color(
                  0xFFF3FAFE,
                ),
                fontSize: 24,
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            CircleAvatar(
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.done),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
