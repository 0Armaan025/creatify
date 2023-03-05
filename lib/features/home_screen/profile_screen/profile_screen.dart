import 'package:creatify/features/main/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  final String name;
  final String email;
  final String phoneNumber;
  final int points;
  final int collaborations;

  ProfileScreen({
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.points,
    required this.collaborations,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: makeDrawer(context),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1487611459768-bd414656ea10?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fG1hY2Jvb2slMjBpbWFnZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60'),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  colors: [
                    Colors.black.withOpacity(.6),
                    Colors.black.withOpacity(.2),
                  ],
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1530281700549-e82e7bf110d6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8ZG9nfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60'),
                    ),
                    SizedBox(height: 10),
                    Text(
                      name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Icon(Icons.email, color: Colors.white, size: 16),
                        SizedBox(width: 5),
                        Text(
                          email,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Icon(Icons.phone, color: Colors.white, size: 16),
                        SizedBox(width: 5),
                        Text(
                          phoneNumber,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Points: $points',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Collaborations: $collaborations',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: Text(
              '" I am Armaan, and you know what?\nI am winning this hackathon and chess too 😎" ',
              style: GoogleFonts.roboto(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: Icon(
              Icons.badge,
              size: 52,
              color: Colors.purple,
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: Container(
              width: 250,
              height: 40,
              alignment: Alignment.center,
              color: btnColor,
              child: Text(
                "Become cooler creator!😎",
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
