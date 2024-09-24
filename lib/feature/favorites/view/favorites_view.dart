import 'package:flutter/material.dart';

final class FavoritesView extends StatefulWidget {
  final String label;
  const FavoritesView({super.key, required this.label});

  @override
  State<FavoritesView> createState() => _FavoritesViewState();
}

final class _FavoritesViewState extends State<FavoritesView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Favorites View'),
      ),
    );
  }
}
