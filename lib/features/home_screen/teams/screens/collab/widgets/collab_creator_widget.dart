// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:creatify/features/main/constants.dart';

class CreatorWidget extends StatefulWidget {
  final String name;
  final String socialStatus;
  final String tagline;
  const CreatorWidget({
    Key? key,
    required this.name,
    required this.socialStatus,
    required this.tagline,
  }) : super(key: key);

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
      width: size.width * 0.8,
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
                  height: size.height * 0.31,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://s3.amazonaws.com/organizer.mlh.io/olpwndiq7wwmpfh35rs3imyahxqg?response-content-disposition=inline%3B%20filename%3D%22OHQ%20or%20Website.png%22%3B%20filename%2A%3DUTF-8%27%27OHQ%2520or%2520Website.png&response-content-type=image%2Fpng&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAJFCF2ZS25I2RWYBQ%2F20230305%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20230305T015944Z&X-Amz-Expires=300&X-Amz-SignedHeaders=host&X-Amz-Signature=ba69ba3fbdd39aa4eee6f9c638424c8aa44e35e2907e7b5caf4e7f944193b874'),
                      // fit: BoxFit.cover,
                      fit: BoxFit.fill,
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
                left: 210,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 22,
                    backgroundColor: Color(0xFF1C3A48),
                    child: CircleAvatar(
                      backgroundColor: Color(0xFFD2D7D9),
                      radius: 20,
                      child: Text(
                        '${widget.socialStatus}',
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
                left: 180,
                top: 50,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Social Status',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      backgroundColor: Colors.black,
                    ),
                  ),
                ),
              ),
              Positioned(
                  top: 10,
                  left: 60,
                  child: Container(
                    height: 130,
                    width: 130,
                    child: Center(
                      child: Image(
                        image: NetworkImage(
                            'https://static.mlh.io/brand-assets/logo/official/mlh-logo-color.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )),
              Positioned(
                  top: 120,
                  left: 10,
                  child: Center(
                    child: Text(
                      "${widget.name}",
                      style: GoogleFonts.poppins(
                        color: Colors.green,
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )),
              Positioned(
                  top: 150,
                  left: 10,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 2.0),
                      child: Text(
                        "${widget.tagline}",
                        style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  )),
              Positioned(
                top: 210,
                left: 70,
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
