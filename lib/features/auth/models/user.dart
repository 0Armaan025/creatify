// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UserModel {
  final String name;
  final String uid;
  final String email;
  final String phoneNumber;
  final String password;
  final String reputation;
  UserModel({
    required this.name,
    required this.uid,
    required this.email,
    required this.phoneNumber,
    required this.password,
    required this.reputation,
  });

  UserModel copyWith({
    String? name,
    String? uid,
    String? email,
    String? phoneNumber,
    String? password,
    String? reputation,
  }) {
    return UserModel(
      name: name ?? this.name,
      uid: uid ?? this.uid,
      email: email ?? this.email,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      password: password ?? this.password,
      reputation: reputation ?? this.reputation,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'uid': uid,
      'email': email,
      'phoneNumber': phoneNumber,
      'password': password,
      'reputation': reputation,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'] as String,
      uid: map['uid'] as String,
      email: map['email'] as String,
      phoneNumber: map['phoneNumber'] as String,
      password: map['password'] as String,
      reputation: map['reputation'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserModel(name: $name, uid: $uid, email: $email, phoneNumber: $phoneNumber, password: $password, reputation: $reputation)';
  }

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.uid == uid &&
        other.email == email &&
        other.phoneNumber == phoneNumber &&
        other.password == password &&
        other.reputation == reputation;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        uid.hashCode ^
        email.hashCode ^
        phoneNumber.hashCode ^
        password.hashCode ^
        reputation.hashCode;
  }
}
