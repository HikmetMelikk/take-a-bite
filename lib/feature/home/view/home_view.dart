import 'package:flutter/material.dart';
import 'package:take_a_bite/feature/home/view/widget/home_filter.dart';
import 'package:take_a_bite/feature/home/view/widget/home_foods_sections.dart';
import 'package:take_a_bite/feature/home/view/widget/home_view_text.dart';
import 'package:take_a_bite/product/utils/widgets/spacing.dart';

class HomeView extends StatefulWidget {
  final String label;

  const HomeView({
    super.key,
    required this.label,
  });

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: _HomeAppBar(),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeViewText(text: "Delicious\nFood For You"),
              SpacingBox(),
              TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search),
                ),
              ),
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
