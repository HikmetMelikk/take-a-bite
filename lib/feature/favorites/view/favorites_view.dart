import 'package:flutter/material.dart';

class FavoritesView extends StatefulWidget {
  final String label;
  const FavoritesView({super.key, required this.label});

  @override
  State<FavoritesView> createState() => _FavoritesViewState();
}

class _FavoritesViewState extends State<FavoritesView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Favorites View'),
      ),
    );
  }
}
