import 'package:flutter/material.dart';

final class HomeViewText extends StatelessWidget {
  final String text;

  const HomeViewText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.start,
      "Delicious\nFood For You",
      style: Theme.of(context).textTheme.displaySmall?.copyWith(fontWeight: FontWeight.bold),
    );
  }
}
