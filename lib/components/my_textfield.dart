import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final bool obscureText;
  const MyTextfield({
    super.key,
    required this.hintText,
    required this.controller,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        obscureText: obscureText,
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: Theme.of(context).colorScheme.tertiary,
          ),
          fillColor: Theme.of(context).colorScheme.primary,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
        ),
      ),
    );
  }
}
