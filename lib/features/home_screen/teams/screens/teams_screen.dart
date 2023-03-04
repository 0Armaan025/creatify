import 'dart:io';

import 'package:creatify/features/home_screen/teams/widgets/team_widget.dart';
import 'package:creatify/features/main/constants.dart';
import 'package:flutter/material.dart';

class TeamsScreen extends StatefulWidget {
  const TeamsScreen({super.key});

  @override
  State<TeamsScreen> createState() => _TeamsScreenState();
}

class _TeamsScreenState extends State<TeamsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: makeDrawer(context),
      appBar: makeCustomAppBar('Teams'),
      backgroundColor: bgColor,
      body: Container(
          padding: EdgeInsets.all(12.0),
          child: GridView.builder(
            itemCount: 1,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
            ),
            itemBuilder: (BuildContext context, int index) {
              return Text('hi');
            },
          )),
    );
  }
}
