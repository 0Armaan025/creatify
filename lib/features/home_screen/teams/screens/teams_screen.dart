import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
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
      body: StreamBuilder(
          stream: firestore.collection('teams').snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (!snapshot.hasData) {
              return Center(
                  child: Text(
                      "No data is currently available, go ahead and make a team!  "));
            }

            return SizedBox(
              height: 300,
              width: 1200,
              child: Center(
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
              ),
            );
          }),
    );
  }
}
