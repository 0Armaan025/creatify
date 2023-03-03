import 'package:creatify/features/auth/models/user.dart';
import 'package:creatify/features/main/constants.dart';
import 'package:flutter/material.dart';

class AuthController {
  //some firebase functions
  void signUp(BuildContext context, UserModel model) {
    try {
      firebaseAuth
          .createUserWithEmailAndPassword(
              email: model.email, password: model.password)
          .then((value) {
        uid = firebaseAuth.currentUser?.uid ?? "";
        UserModel newModel = UserModel(
            email: model.email,
            password: model.password,
            name: model.name,
            uid: uid,
            phoneNumber: model.phoneNumber,
            reputation: '0');
        firestore.collection('users').doc(uid).set(newModel.toMap());
      });
    } catch (e) {
      showSnackBar(
          context, 'an error occured while signing up ${e.toString()}');
    }
  }

  void login(BuildContext context, String email, String password) {
    try {
      firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((value) {
        print('done');
      });
    } catch (e) {
      showSnackBar(
          context, 'an error occured while signing up ${e.toString()}');
    }
  }
}
