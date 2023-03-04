import 'package:cloud_firestore/cloud_firestore.dart';
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
