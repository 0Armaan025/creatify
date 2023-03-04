import 'package:cloud_firestore/cloud_firestore.dart';
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
