import 'dart:io';

import 'package:creatify/features/auth/models/team.dart';
import 'package:creatify/features/home_screen/home_screen.dart';
import 'package:creatify/features/main/constants.dart';
import 'package:flutter/material.dart';

class TeamController {
  // some normal methods here

  void makeTeam(TeamModel model, BuildContext context, File imageFile) async {
    try {
      final ref = firebaseStorage.ref().child('teams').child("/$uid.jpg");
      final uploadTask = ref.putFile(imageFile);

      var dowurl = await ref.getDownloadURL();
      TeamModel newModel = TeamModel(
          image: dowurl,
          members: [uid],
          teamCreatorName: model.teamCreatorName,
          teamCreatorUid: uid,
          teamName: model.teamName,
          teamTagline: model.teamTagline);
      firestore
          .collection('teams')
          .doc(model.teamName)
          .set(newModel.toMap())
          .then((value) {
        moveScreen(context, true, HomeScreen());
      });
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }
}
