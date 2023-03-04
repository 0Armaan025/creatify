import 'package:creatify/features/main/constants.dart';
import 'package:flutter/material.dart';

class TeamField extends StatefulWidget {
  final hintText;
  final controller;
  final isObscure;
  final inputType;
  const TeamField(
      {super.key,
      required this.hintText,
      required this.controller,
      required this.isObscure,
      required this.inputType});

  @override
  State<TeamField> createState() => _TeamFieldState();
}

class _TeamFieldState extends State<TeamField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 10),
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.blue, width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.blue, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.blue, width: 2),
          ),
          hintText: widget.hintText,
        ),
        keyboardType: widget.inputType,
        obscureText: widget.isObscure,
        controller: widget.controller,
      ),
    );
  }
}
