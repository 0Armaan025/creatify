import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:creatify/features/home_screen/home_screen.dart';
import 'package:creatify/features/home_screen/profile_screen/profile_screen.dart';
import 'package:creatify/features/home_screen/teams/screens/ai_script/screens/optimization_screen.dart';
import 'package:creatify/features/home_screen/teams/screens/challenges/screens/challenges_screen.dart';
import 'package:creatify/features/home_screen/teams/screens/collab/screens/collab_screen.dart';
import 'package:creatify/features/home_screen/teams/screens/create_team_screen.dart';
import 'package:creatify/features/home_screen/teams/screens/teams_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final firestore = FirebaseFirestore.instance;
final firebaseAuth = FirebaseAuth.instance;
final firebaseStorage = FirebaseStorage.instance;

showSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(message),
  ));
}

AppBar makeAppBar() {
  return AppBar(
    backgroundColor: Color(0xFF336882),
    title: Text(
      'Creatify',
      style: GoogleFonts.poppins(
        color: Color(0xFFF3FAFE),
      ),
    ),
    centerTitle: true,
  );
}

AppBar makeCustomAppBar(String message) {
  return AppBar(
    backgroundColor: Color(0xFF336882),
    title: Text(
      '$message',
      style: GoogleFonts.poppins(
        color: Color(0xFFF3FAFE),
      ),
    ),
    centerTitle: true,
  );
}

int collaborations = 0;
int points = 0;

Drawer makeDrawer(BuildContext context) {
  return Drawer(
    backgroundColor: bgColor,
    child: ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(0),
          child: UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xFF032D42),
            ),
            accountName: Text(
              'Armaan',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                fontSize: 28,
              ),
            ),
            accountEmail: Text(
              'armaan33000@gmail.com',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w300,
                fontSize: 16,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(0),
          child: ListTile(
            onTap: () {
              moveScreen(context, true, HomeScreen());
            },
            tileColor: Color(0xFF336882),
            leading: Icon(
              Icons.home,
              color: Color(0xFFF3FAFE),
            ),
            title: Text(
              "Home",
              style: GoogleFonts.roboto(
                color: Color(0xFFF3FAFE),
                fontWeight: FontWeight.w600,
                fontSize: 15,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.all(0),
          child: ListTile(
            onTap: () {
              moveScreen(context, false, TeamsScreen());
            },
            tileColor: Color(0xFF336882),
            leading: Icon(
              Icons.group,
              color: Color(0xFFF3FAFE),
            ),
            title: Text(
              "Your Teams",
              style: GoogleFonts.roboto(
                color: Color(0xFFF3FAFE),
                fontWeight: FontWeight.w600,
                fontSize: 15,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.all(0),
          child: ListTile(
            onTap: () {
              moveScreen(context, false, CreateTeamScreen());
            },
            tileColor: Color(0xFF336882),
            leading: Icon(
              Icons.add,
              color: Color(0xFFF3FAFE),
            ),
            title: Text(
              "Make a team",
              style: GoogleFonts.roboto(
                color: Color(0xFFF3FAFE),
                fontWeight: FontWeight.w600,
                fontSize: 15,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.all(0),
          child: ListTile(
            onTap: () {
              moveScreen(context, false, CollabScreen());
            },
            tileColor: Color(0xFF336882),
            leading: Icon(
              Icons.group_add_rounded,
              color: Color(0xFFF3FAFE),
            ),
            title: Text(
              "Collab with other creators",
              style: GoogleFonts.roboto(
                color: Color(0xFFF3FAFE),
                fontWeight: FontWeight.w600,
                fontSize: 15,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.all(0),
          child: ListTile(
            onTap: () {
              moveScreen(context, false, ChallengesScreen());
            },
            tileColor: Color(0xFF336882),
            leading: Icon(
              Icons.cottage,
              color: Color(0xFFF3FAFE),
            ),
            title: Text(
              "Challenges",
              style: GoogleFonts.roboto(
                color: Color(0xFFF3FAFE),
                fontWeight: FontWeight.w600,
                fontSize: 15,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.all(0),
          child: ListTile(
            onTap: () {
              moveScreen(context, false, OptimizationScreen());
            },
            tileColor: Color(0xFF336882),
            leading: Icon(
              Icons.network_cell,
              color: Color(0xFFF3FAFE),
            ),
            title: Text(
              "AI Script Optimization",
              style: GoogleFonts.roboto(
                color: Color(0xFFF3FAFE),
                fontWeight: FontWeight.w600,
                fontSize: 15,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(0),
          child: ListTile(
            onTap: () {
              moveScreen(
                  context,
                  false,
                  ProfileScreen(
                      name: name,
                      email: email,
                      phoneNumber: '+917837433000',
                      thepoints: 0,
                      collaborations: 0));
            },
            tileColor: Color.fromARGB(255, 64, 135, 170),
            leading: Icon(
              Icons.person,
              color: Color(0xFFF3FAFE),
            ),
            title: Text(
              "My Profile",
              style: GoogleFonts.roboto(
                color: Color(0xFFF3FAFE),
                fontWeight: FontWeight.w600,
                fontSize: 15,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(0),
          child: ListTile(
            tileColor: Color.fromARGB(255, 64, 135, 170),
            leading: Icon(
              Icons.logout,
              color: Color(0xFFF3FAFE),
            ),
            title: Text(
              "Log out",
              style: GoogleFonts.roboto(
                color: Color(0xFFF3FAFE),
                fontWeight: FontWeight.w600,
                fontSize: 15,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Future<void> showMyDialog(
    BuildContext context, String title, String message, String teamName) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('$title'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('$message'),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Approve'),
            onPressed: () {
              Navigator.of(context).pop();
              if (message == "Are you sure to give up?") {
                firestore.collection('teams').doc(teamName).delete();
                showSnackBar(context,
                    'Unfortunately, the team has been deleted due to giving up of one member');
                moveScreen(context, true, HomeScreen());
              } else {
                showSnackBar(
                    context, "The request has been sent successfully to them");
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                                moveScreen(context, false, HomeScreen());
                                points = points + 10;
                                collaborations = collaborations + 1;
                              },
                              child: Text("yayyyyy!")),
                        ],
                        content: SizedBox(
                          height: 100,
                          child: ListView(
                            children: [
                              Text(
                                  "Congratulations! your 10 points have been added!\nGood JOB!"),
                            ],
                          ),
                        ),
                      );
                    });
              }
            },
          ),
        ],
      );
    },
  );
}

const apiSecretKey = "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";

final bgColor = Color(0xFFD2D7D9);
final textColor = Color(0xFF01121A);
final btnColor = Color(0xFF87979F);

String uid = "";
String name = "";
String email = "";

moveScreen(BuildContext context, bool isPushReplacement, Widget screen) {
  if (isPushReplacement) {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => screen));
  } else {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => screen));
  }
}
