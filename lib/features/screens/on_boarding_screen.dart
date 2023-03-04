import 'package:creatify/features/auth/screens/sign_up_screen.dart';
import 'package:creatify/features/home_screen/home_screen.dart';
import 'package:creatify/features/main/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_screen/OnbordingData.dart';
import 'package:flutter_onboarding_screen/flutteronboardingscreens.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final List<OnbordingData> list = [
    OnbordingData(
      imagePath: "https://cdn-icons-png.flaticon.com/512/1402/1402121.png",
      title: "Connect with others!",
      desc:
          "Connect with other content creators! do challenges and increase your reputation!",
    ),
    OnbordingData(
      imagePath: "https://cdn-icons-png.flaticon.com/512/8055/8055576.png",
      title: "Best Script Optimization!",
      desc: "Generate your scripts and optimize yours with the help of AI!",
    ),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (firebaseAuth.currentUser != null) {
      uid = firebaseAuth.currentUser?.uid ?? '';
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    /* remove the back button in the AppBar is to set automaticallyImplyLeading to false
  here we need to pass the list and the route for the next page to be opened after this. */
    return IntroScreen(
      list,
      MaterialPageRoute(
          builder: (context) =>
              firebaseAuth.currentUser == null ? SignUpScreen() : HomeScreen()),
    );
  }
}
