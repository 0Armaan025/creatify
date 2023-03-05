import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:creatify/features/home_screen/teams/screens/collab/screens/collab_screen.dart';
import 'package:creatify/features/home_screen/teams/screens/create_team_screen.dart';
import 'package:creatify/features/home_screen/teams/screens/teams_screen.dart';
import 'package:creatify/features/home_screen/teams/widgets/team_widget.dart';
import 'package:creatify/features/main/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String todaysDate = "";
  String year = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var now = new DateTime.now();
    var formatter = new DateFormat('dd');
    String formattedDate = formatter.format(now);
    print(formattedDate);
    todaysDate = formattedDate;
    setState(() {});
    formatter = new DateFormat('yyyy');
    formattedDate = formatter.format(now);
    year = formattedDate;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: makeAppBar(),
      drawer: makeDrawer(context),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.only(left: 14, top: 2),
                width: double.infinity,
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Text(
                      "Hey there,",
                      style: GoogleFonts.roboto(
                        fontSize: 32,
                        color: textColor,
                      ),
                    ),
                    Text(
                      '\tArmaan!',
                      style: GoogleFonts.roboto(
                        fontSize: 32,
                        color: textColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 13, top: 2),
                width: double.infinity,
                alignment: Alignment.centerLeft,
                child: Text(
                  "$todaysDate March, $year",
                  style: GoogleFonts.roboto(color: Colors.grey[600]),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      left: 14,
                      top: 2,
                    ),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Your recent teams...",
                      style: GoogleFonts.poppins(
                        color: textColor,
                        fontSize: 19,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      right: 14,
                      top: 2,
                    ),
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      child: Text(
                        'View All...',
                        style: GoogleFonts.roboto(
                          color: Color(0xFF01121A),
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                        ),
                      ),
                      onPressed: () {
                        moveScreen(context, false, TeamsScreen());
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              StreamBuilder(
                  stream: firestore.collection('teams').snapshots(),
                  builder: (BuildContext context,
                      AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (!snapshot.hasData) {
                      return Center(
                          child: Text(
                              "No data is currently available, go ahead and make a team!  "));
                    }

                    return SizedBox(
                      height: 300,
                      width: 1200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: snapshot.data!.docs.map((document) {
                          return TeamWidget(
                            image: document['image'],
                            name: document['teamName'],
                            tagline: document['teamTagline'],
                          );
                        }).toList(),
                      ),
                    );
                  }),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 2.0,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Want to make one?',
                              style: GoogleFonts.roboto(
                                fontSize: 18,
                                color: Color(0xFF01121A),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                moveScreen(context, false, CreateTeamScreen());
                              },
                              child: Text(
                                '\tMake Here!',
                                style: GoogleFonts.roboto(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF01121A),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Text(
                          '" Collaboration is better than making alone\n- a wise human "',
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: InkWell(
                          onTap: () {
                            moveScreen(context, false, CollabScreen());
                          },
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 30),
                            width: double.infinity,
                            height: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Color(0xFF1C3A48),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              "Yeah, let's collab!",
                              style: GoogleFonts.roboto(
                                color: Color(0xFFF3FAFE),
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
