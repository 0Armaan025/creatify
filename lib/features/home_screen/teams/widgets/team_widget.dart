// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:creatify/features/home_screen/teams/screens/team_info_screen.dart';
import 'package:creatify/features/main/constants.dart';

class TeamWidget extends StatefulWidget {
  final String image;
  final String name;
  final String tagline;
  const TeamWidget({
    Key? key,
    required this.image,
    required this.name,
    required this.tagline,
  }) : super(key: key);

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
        height: size.height * 0.4,
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
                image: NetworkImage('${widget.image}'),
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
                  '${widget.name}',
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
                  '${widget.tagline}',
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
            InkWell(
              onTap: () {
                moveScreen(context, false, TeamInfoScreen());
              },
              child: Center(
                child: InkWell(
                  onTap: () {
                    moveScreen(context, false, TeamInfoScreen());
                  },
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
