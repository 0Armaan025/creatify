import 'package:creatify/features/main/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreatorWidget extends StatefulWidget {
  const CreatorWidget({super.key});

  @override
  State<CreatorWidget> createState() => _CreatorWidgetState();
}

class _CreatorWidgetState extends State<CreatorWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      height: size.height * 0.33,
      width: size.width * 0.6,
      decoration: BoxDecoration(
        color: Color(0xFF1D546F),
        borderRadius: BorderRadius.circular(10),
      ),
      alignment: Alignment.center,
      child: Column(
        children: [
          Stack(
            children: [
              Positioned(
                child: Container(
                  height: size.height * 0.32,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1587300003388-59208cc962cb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8ZG9nfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundColor: Color(0xFFD2D7D9),
                    radius: 20,
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1530281700549-e82e7bf110d6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8ZG9nfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60'),
                  ),
                ),
              ),
              Positioned(
                left: 150,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 22,
                    backgroundColor: Color(0xFF1C3A48),
                    child: CircleAvatar(
                      backgroundColor: Color(0xFFD2D7D9),
                      radius: 20,
                      child: Text(
                        '7',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold,
                          color: textColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 120,
                top: 50,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Social Status',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.bold,
                      color: textColor,
                    ),
                  ),
                ),
              ),
              Positioned(
                  top: 130,
                  left: 10,
                  child: Center(
                    child: Text(
                      "Armaan",
                      style: GoogleFonts.poppins(
                        color: textColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )),
              Positioned(
                  top: 160,
                  left: 10,
                  child: Center(
                    child: Text(
                      "Hi there! I am a content there\nI am available there on Creatify!",
                      style: GoogleFonts.roboto(
                        color: textColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  )),
              Positioned(
                top: 200,
                left: 30,
                child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    width: 120,
                    height: size.height * 0.04,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: btnColor,
                    ),
                    alignment: Alignment.center,
                    child: Text("Collab!",
                        style: GoogleFonts.roboto(
                          color: Colors.white,
                        ))),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
