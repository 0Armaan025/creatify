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
            CreatorWidget(),
            CreatorWidget(),
            CreatorWidget(),
            CreatorWidget(),
          ],
        ),
      ),
    );
  }
}
