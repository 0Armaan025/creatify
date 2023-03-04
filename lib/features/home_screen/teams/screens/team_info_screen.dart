import 'package:creatify/features/home_screen/teams/widgets/team_member_widget.dart';
import 'package:creatify/features/main/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TeamInfoScreen extends StatefulWidget {
  const TeamInfoScreen({super.key});

  @override
  State<TeamInfoScreen> createState() => _TeamInfoScreenState();
}

class _TeamInfoScreenState extends State<TeamInfoScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: bgColor,
      appBar: makeCustomAppBar('Creatify(team name)!'),
      drawer: makeDrawer(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                "Creatify",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              width: double.infinity,
              height: size.height * 0.4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: NetworkImage('https://picsum.photos/200'),
                    fit: BoxFit.cover),
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Center(
              child: Text(
                '" Make something creative is the tagline "',
                style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Card(
                  elevation: 2.0,
                  child: Container(
                    color: Color(0xFF336882),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Center(
                          child: Text(
                            "Team Members",
                            style: GoogleFonts.poppins(
                              // color: textColor,
                              fontSize: 22,
                              color: Color(0xFFF3FAFE),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        TeamMemberWidget(),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(4),
                  width: 150,
                  height: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xFF87979F),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    'Chat with teammates',
                    style: GoogleFonts.roboto(
                      color: Color(0xFFF3FAFE),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(4),
                  width: 150,
                  height: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 107, 120, 126),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    'Check the checklist',
                    style: GoogleFonts.roboto(
                      color: Color(0xFFF3FAFE),
                    ),
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
