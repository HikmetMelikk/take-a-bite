import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  final String label;
  const ProfileView({super.key, required this.label});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Profile View'),
      ),
    );
  }
}
