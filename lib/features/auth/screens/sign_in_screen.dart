import 'package:creatify/features/auth/common/widgets/auth_field.dart';
import 'package:creatify/features/auth/controller/auth_controller.dart';
import 'package:creatify/features/auth/models/user.dart';
import 'package:creatify/features/auth/screens/sign_up_screen.dart';
import 'package:creatify/features/main/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:twilio_flutter/twilio_flutter.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _emailController = TextEditingController();

  final _passwordController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void sendMessage(BuildContext context) async {
    AuthController controller = AuthController();
    controller.login(context, _emailController.text, _passwordController.text);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailController.dispose();

    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Image(
                image: NetworkImage(
                    'https://img.freepik.com/premium-vector/muslim-giving-gift-during-ramadan-celebration-hand-drawn-vector-illustration_450176-147.jpg?w=900'),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 12),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Sign In',
                  style: GoogleFonts.poppins(
                    color: textColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 32,
                  ),
                ),
              ),
            ),
            AuthField(
                hintText: 'Email address',
                isObscure: false,
                icon: Icon(Icons.email),
                controller: _emailController),
            AuthField(
                hintText: 'Password',
                isObscure: true,
                icon: Icon(Icons.password),
                controller: _passwordController),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: InkWell(
                onTap: () {
                  sendMessage(context);
                },
                child: Container(
                  width: double.infinity,
                  height: 40,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: btnColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    "Continue with Email!",
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'New Here?',
                    style: GoogleFonts.poppins(
                      color: textColor,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      moveScreen(context, false, SignUpScreen());
                    },
                    child: Text(
                      '\tSign Up!',
                      style: GoogleFonts.poppins(
                        color: textColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
