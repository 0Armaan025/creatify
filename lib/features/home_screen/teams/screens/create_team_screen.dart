import 'package:creatify/features/home_screen/teams/widgets/team_field.dart';
import 'package:creatify/features/main/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateTeamScreen extends StatefulWidget {
  const CreateTeamScreen({super.key});

  @override
  State<CreateTeamScreen> createState() => _CreateTeamScreenState();
}

class _CreateTeamScreenState extends State<CreateTeamScreen> {
  final _teamNameController = TextEditingController();
  final _teamTaglineController = TextEditingController();

  void dispose() {
    super.dispose();
    _teamTaglineController.dispose();
    _teamNameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: bgColor,
      appBar: makeCustomAppBar('Create a team!'),
      drawer: makeDrawer(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                "Create a team!",
                style: GoogleFonts.poppins(
                  color: textColor,
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Center(
              child: Text(
                "Collab and shine with other content creators just like you!",
                style: GoogleFonts.roboto(
                  color: textColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              height: size.height * 0.3,
              alignment: Alignment.center,
              child: IconButton(
                icon:
                    Icon(Icons.add_a_photo, color: Colors.grey[200], size: 30),
                onPressed: () {},
              ),
              decoration: BoxDecoration(
                color: Colors.grey[500],
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Card(
                elevation: 3.0,
                child: Container(
                  color: Colors.lightBlue.shade100,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      TeamField(
                          hintText: 'Enter your team\'s name',
                          controller: _teamNameController,
                          inputType: TextInputType.text,
                          isObscure: false),
                      TeamField(
                          hintText: 'Enter your team\'s tagline',
                          controller: _teamTaglineController,
                          inputType: TextInputType.text,
                          isObscure: false),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //button
            Center(
              child: Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 30),
                height: size.height * 0.08,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color(0xFF314B57),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text('Yeah, let\'s do this!',
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
