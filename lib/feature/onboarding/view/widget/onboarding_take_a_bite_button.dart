import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

final class TakeABiteButton extends StatefulWidget {
  const TakeABiteButton({super.key});

  @override
  State<TakeABiteButton> createState() => _TakeABiteButtonState();
}

class _TakeABiteButtonState extends State<TakeABiteButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        final isOnboardingShow = await SharedPreferences.getInstance();
        isOnboardingShow.setBool("isOnboardingShow", true);
        if (!context.mounted) return;
        context.goNamed("auth");
      },
      child: const Text("Take a bite"),
    );
  }
}
