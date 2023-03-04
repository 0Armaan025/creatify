import 'package:creatify/features/main/constants.dart';
import 'package:flutter/material.dart';

class TeamInfoScreen extends StatefulWidget {
  const TeamInfoScreen({super.key});

  @override
  State<TeamInfoScreen> createState() => _TeamInfoScreenState();
}

class _TeamInfoScreenState extends State<TeamInfoScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: bgColor,
      appBar: makeCustomAppBar('Creatify(team name)!'),
      drawer: makeDrawer(context),
      body: SingleChildScrollView(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
