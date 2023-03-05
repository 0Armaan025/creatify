import 'package:creatify/features/home_screen/teams/screens/ai_script/screens/optimization_screen.dart';
import 'package:creatify/features/main/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChallengesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: makeCustomAppBar('Challenges'),
      drawer: makeDrawer(context),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Challenges',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Active Challenges',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ChallengeCard(
                    image:
                        'https://plus.unsplash.com/premium_photo-1663012830680-6dd85169a658?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y2FtZXJhJTIwaW1hZ2V8ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60',
                    title: '30 Day Challenge',
                    subtitle: 'Create and post daily for 30 days',
                    color: Colors.orange,
                  ),
                  ChallengeCard(
                    image:
                        'https://plus.unsplash.com/premium_photo-1663011666483-ac74795eb4a0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8Y2FtZXJhJTIwaW1hZ2V8ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60',
                    title: 'Weekly Challenge',
                    subtitle: 'Create and post weekly for 4 weeks',
                    color: Colors.blue,
                  ),
                  ChallengeCard(
                    image:
                        'https://images.unsplash.com/photo-1590402494587-44b71d7772f6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Y29sbGFib3JhdGlvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60',
                    title: 'Collaboration Challenge',
                    subtitle: 'Collab with another creator to create content',
                    color: Colors.green,
                  ),
                  ChallengeCard(
                    image:
                        'https://images.unsplash.com/photo-1590402494587-44b71d7772f6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Y29sbGFib3JhdGlvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60',
                    title: 'Use AI ',
                    subtitle: 'Use AI to optimize your script for once',
                    color: Colors.orange,
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Past Challenges',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ChallengeCard(
                    image:
                        'https://images.unsplash.com/photo-1487349384428-12b47aca925e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8aG9saWRheXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60',
                    title: 'Holiday Challenge',
                    subtitle: 'Create and post holiday themed content',
                    color: Colors.red,
                  ),
                  ChallengeCard(
                    image:
                        'https://plus.unsplash.com/premium_photo-1677094310918-cc302203b21c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fGFpfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60',
                    title: 'Make content using only AI',
                    subtitle: 'Make content only using AI for 14 days and win!',
                    color: Colors.orange,
                  ),
                  ChallengeCard(
                    image:
                        'https://images.unsplash.com/photo-1514782831304-632d84503f6f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8d2Vla2x5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60',
                    title: 'Weekly Challenge',
                    subtitle: 'Create and post weekly for 4 weeks',
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChallengeCard extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final Color color;

  ChallengeCard({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 250,
        height: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Center(
                child: Image(
                  image: NetworkImage(image),
                  fit: BoxFit.fitWidth,
                  height: 80,
                  width: double.infinity,
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    subtitle,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(height: 5),
                  Center(
                    child: InkWell(
                      onTap: () {
                        if (title == "Use AI ") {
                          moveScreen(context, true,
                              OptimizationScreen(challenge: "yes"));
                        }
                      },
                      child: Container(
                          width: 120,
                          height: 30,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Color(0xFF314B57),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            "Select!",
                            style: GoogleFonts.roboto(
                              color: Colors.white,
                            ),
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
