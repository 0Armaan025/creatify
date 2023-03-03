import 'package:creatify/features/auth/common/widgets/auth_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:twilio_flutter/twilio_flutter.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _emailController = TextEditingController();
  final _nameController = TextEditingController();
  final _mobileController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void sendMessage() async {
    final String accountSid = 'ACb4cf88e58cb192edd990d56ffc944198';
    final String authToken = '09b4b910662827ea42443a73fb697ccb';
    final String fromPhoneNumber = '+17207828068';
    final String message = 'Hello from Flutter!';

    TwilioFlutter twilioFlutter = TwilioFlutter(
      accountSid: accountSid, // replace *** with Account SID
      authToken: authToken, // replace xxx with Auth Token
      twilioNumber: fromPhoneNumber, // replace .... with Twilio Number
    );

    twilioFlutter.sendSMS(
        toNumber: '+917009280622',
        messageBody:
            'hello ${_nameController.text}, welcome to Creatify! We empower content creators and hackers! Let\'s see what content you make with the power of collaboration,gamifying experience and AI ⭐');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailController.dispose();
    _nameController.dispose();
    _mobileController.dispose;
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Image(
                image: NetworkImage(
                    'https://img.freepik.com/premium-vector/businessmen-shaking-hands-concluding-deal-signing-contract-concept-vector-illustration_143808-740.jpg?w=740'),
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
                  'Sign up',
                  style: GoogleFonts.poppins(
                    color: Colors.black,
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
                hintText: 'Full Name',
                isObscure: false,
                icon: Icon(Icons.person),
                controller: _nameController),
            AuthField(
                hintText: 'Phone Number [with country code]',
                isObscure: false,
                inputType: TextInputType.phone,
                icon: Icon(Icons.phone),
                controller: _mobileController),
            AuthField(
                hintText: 'Password',
                isObscure: true,
                icon: Icon(Icons.password),
                controller: _passwordController),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: InkWell(
                onTap: () {
                  sendMessage();
                },
                child: Container(
                  width: double.infinity,
                  height: 40,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.blue,
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
          ],
        ),
      ),
    );
  }
}
