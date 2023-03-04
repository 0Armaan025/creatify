import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TeamMemberWidget extends StatefulWidget {
  const TeamMemberWidget({super.key});

  @override
  State<TeamMemberWidget> createState() => _TeamMemberWidgetState();
}

class _TeamMemberWidgetState extends State<TeamMemberWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 10),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFF032D42),
          borderRadius: BorderRadius.circular(12),
        ),
        height: size.height * 0.08,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: CircleAvatar(
                  backgroundImage: NetworkImage('https://picsum.photos/200'),
                ),
              ),
              const SizedBox(
                width: 2,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Armaan",
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("armaan33000@gmail.com",
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
