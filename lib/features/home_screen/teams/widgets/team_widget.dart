import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TeamWidget extends StatefulWidget {
  const TeamWidget({super.key});

  @override
  State<TeamWidget> createState() => _TeamWidgetState();
}

class _TeamWidgetState extends State<TeamWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Container(
        height: size.height * 0.35,
        width: size.width * 0.6,
        decoration: BoxDecoration(
          color: Color(0xFF1D546F),
          borderRadius: BorderRadius.circular(20),
        ),
        alignment: Alignment.center,
        child: Column(
          children: [
            Center(
              child: Image(
                image: AssetImage('assets/images/creatify.png'),
                fit: BoxFit.cover,
                height: 110,
                width: double.infinity,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 12.0,
                top: 6,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Creatify',
                  style: GoogleFonts.lato(
                    color: Color(0xFFF3FAFE),
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 12.0,
                right: 8,
                top: 8,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Create something creative is only our tagline!',
                  style: GoogleFonts.lato(
                    color: Color(0xFFF3FAFE),
                    fontWeight: FontWeight.w300,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                height: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Color(0xFF87979F),
                ),
                child: Text(
                  "Explore",
                  style: GoogleFonts.roboto(
                    color: Color(0xFFF3FAFE),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
