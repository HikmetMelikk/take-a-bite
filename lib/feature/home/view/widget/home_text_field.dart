import 'package:flutter/material.dart';

final class HomeTextField extends StatelessWidget {
  const HomeTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Search",
        prefixIcon: const Icon(Icons.search),
        filled: true,
        fillColor: const Color(0xFFefeeee),
        disabledBorder: const OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
    );
  }
}
