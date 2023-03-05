import 'package:creatify/features/home_screen/teams/screens/collab/widgets/collab_creator_widget.dart';
import 'package:creatify/features/main/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CollabScreen extends StatefulWidget {
  const CollabScreen({super.key});

  @override
  State<CollabScreen> createState() => _CollabScreenState();
}

class _CollabScreenState extends State<CollabScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: bgColor,
      appBar: makeCustomAppBar('Collaboration!'),
      drawer: makeDrawer(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                'Collab with other creators!',
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CreatorWidget(
                name: 'Armaan',
                tagline: "Hi there! I am Armaan\nand I want to win this!",
                socialStatus: "3"),
            CreatorWidget(
                name: 'Vinayak from MLH',
                tagline:
                    "Hi there! I am Vinayak\n(coach at MLH)\nand I like helping hackers!",
                socialStatus: "100"),
            CreatorWidget(
                name: 'Stephen from MLH',
                tagline:
                    "Hi there! I am Vinayak\n(coach at MLH)\nand I like collabing!",
                socialStatus: "100"),
            CreatorWidget(
                name: 'Jasmine from MLH',
                tagline:
                    "Hi there! I am Jasmine\n(coach at MLH)\nand I like chess!",
                socialStatus: "100"),
            CreatorWidget(
                name: 'Aster',
                tagline:
                    "Hi there! I am Aster\n(a flutter developer)\nand I like to hack!",
                socialStatus: "70"),
            CreatorWidget(
                name: '404_Not_Found Jobs',
                tagline:
                    "Hi there! I am 404\n(a mentor at MLH)\nand I like to travel! (switzerland)",
                socialStatus: "70"),
            CreatorWidget(
                name: 'Ritvi from MLH',
                tagline:
                    "Hi there! I am Ritvi\n(coach at MLH)\nand I watched batman movie\non Sunday ;)'",
                socialStatus: "100"),
          ],
        ),
      ),
    );
  }
}
