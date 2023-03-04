// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class TeamModel {
  final String teamName;
  final String teamTagline;
  final String teamCreatorName;
  final String teamCreatorUid;
  final String image;
  final List<String> members;
  TeamModel({
    required this.teamName,
    required this.teamTagline,
    required this.teamCreatorName,
    required this.teamCreatorUid,
    required this.image,
    required this.members,
  });

  TeamModel copyWith({
    String? teamName,
    String? teamTagline,
    String? teamCreatorName,
    String? teamCreatorUid,
    String? image,
    List<String>? members,
  }) {
    return TeamModel(
      teamName: teamName ?? this.teamName,
      teamTagline: teamTagline ?? this.teamTagline,
      teamCreatorName: teamCreatorName ?? this.teamCreatorName,
      teamCreatorUid: teamCreatorUid ?? this.teamCreatorUid,
      image: image ?? this.image,
      members: members ?? this.members,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'teamName': teamName,
      'teamTagline': teamTagline,
      'teamCreatorName': teamCreatorName,
      'teamCreatorUid': teamCreatorUid,
      'image': image,
      'members': members,
    };
  }

  factory TeamModel.fromMap(Map<String, dynamic> map) {
    return TeamModel(
      teamName: map['teamName'] as String,
      teamTagline: map['teamTagline'] as String,
      teamCreatorName: map['teamCreatorName'] as String,
      teamCreatorUid: map['teamCreatorUid'] as String,
      image: map['image'] as String,
      members: List<String>.from(
        (map['members'] as List<String>),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory TeamModel.fromJson(String source) =>
      TeamModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'TeamController(teamName: $teamName, teamTagline: $teamTagline, teamCreatorName: $teamCreatorName, teamCreatorUid: $teamCreatorUid, image: $image, members: $members)';
  }

  @override
  bool operator ==(covariant TeamModel other) {
    if (identical(this, other)) return true;

    return other.teamName == teamName &&
        other.teamTagline == teamTagline &&
        other.teamCreatorName == teamCreatorName &&
        other.teamCreatorUid == teamCreatorUid &&
        other.image == image &&
        listEquals(other.members, members);
  }

  @override
  int get hashCode {
    return teamName.hashCode ^
        teamTagline.hashCode ^
        teamCreatorName.hashCode ^
        teamCreatorUid.hashCode ^
        image.hashCode ^
        members.hashCode;
  }
}
