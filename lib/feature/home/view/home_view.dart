import 'package:flutter/material.dart';
import 'package:take_a_bite/feature/home/view/widget/home_filter.dart';
import 'package:take_a_bite/feature/home/view/widget/home_foods_sections.dart';
import 'package:take_a_bite/feature/home/view/widget/home_text_field.dart';
import 'package:take_a_bite/feature/home/view/widget/home_view_text.dart';
import 'package:take_a_bite/product/utils/widgets/spacing.dart';

final class HomeView extends StatefulWidget {
  final String label;

  const HomeView({
    super.key,
    required this.label,
  });

  @override
  State<HomeView> createState() => _HomeViewState();
}

final class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeViewText(text: "Delicious\nFood For You"),
              SpacingBox(),
              HomeTextField(),
              HomeFilter(),
              SpacingBox(),
              HomeFoodsSection()
            ],
          ),
        ),
      ),
    );
  }
}
