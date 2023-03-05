// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class TeamModel {
  final String teamName;
  final String teamTagline;
  final String teamCreatorName;
  final String teamCreatorUid;
  final String image;
  TeamModel({
    required this.teamName,
    required this.teamTagline,
    required this.teamCreatorName,
    required this.teamCreatorUid,
    required this.image,
  });

  TeamModel copyWith({
    String? teamName,
    String? teamTagline,
    String? teamCreatorName,
    String? teamCreatorUid,
    String? image,
  }) {
    return TeamModel(
      teamName: teamName ?? this.teamName,
      teamTagline: teamTagline ?? this.teamTagline,
      teamCreatorName: teamCreatorName ?? this.teamCreatorName,
      teamCreatorUid: teamCreatorUid ?? this.teamCreatorUid,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'teamName': teamName,
      'teamTagline': teamTagline,
      'teamCreatorName': teamCreatorName,
      'teamCreatorUid': teamCreatorUid,
      'image': image,
    };
  }

  factory TeamModel.fromMap(Map<String, dynamic> map) {
    return TeamModel(
      teamName: map['teamName'] as String,
      teamTagline: map['teamTagline'] as String,
      teamCreatorName: map['teamCreatorName'] as String,
      teamCreatorUid: map['teamCreatorUid'] as String,
      image: map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory TeamModel.fromJson(String source) =>
      TeamModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'TeamModel(teamName: $teamName, teamTagline: $teamTagline, teamCreatorName: $teamCreatorName, teamCreatorUid: $teamCreatorUid, image: $image)';
  }

  @override
  bool operator ==(covariant TeamModel other) {
    if (identical(this, other)) return true;

    return other.teamName == teamName &&
        other.teamTagline == teamTagline &&
        other.teamCreatorName == teamCreatorName &&
        other.teamCreatorUid == teamCreatorUid &&
        other.image == image;
  }

  @override
  int get hashCode {
    return teamName.hashCode ^
        teamTagline.hashCode ^
        teamCreatorName.hashCode ^
        teamCreatorUid.hashCode ^
        image.hashCode;
  }
}
