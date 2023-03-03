import 'package:flutter/material.dart';

class AuthField extends StatefulWidget {
  final icon;
  final hintText;
  final controller;
  final isObscure;
  final inputType;
  const AuthField(
      {super.key,
      required this.icon,
      this.inputType = TextInputType.text,
      required this.hintText,
      required this.controller,
      required this.isObscure});

  @override
  State<AuthField> createState() => _AuthFieldState();
}

class _AuthFieldState extends State<AuthField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 18),
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 4),
          hintText: widget.hintText,
          prefixIconColor: Colors.grey[600],
          border: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blue,
            ),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blue,
            ),
          ),
        ),
        keyboardType: widget.inputType,
        obscureText: widget.isObscure,
        controller: widget.controller,
      ),
    );
  }
}
