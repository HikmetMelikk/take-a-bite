import 'package:flutter/material.dart';
import 'package:take_a_bite/feature/home/view/widget/home_filter.dart';
import 'package:take_a_bite/feature/home/view/widget/home_foods_sections.dart';
import 'package:take_a_bite/feature/home/view/widget/home_view_text.dart';

part 'widget/home_app_bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: _HomeAppBar(),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeViewText(text: "Delicious\nFood For You"),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search),
                ),
              ),
              HomeFilter(),
              SizedBox(
                height: 20,
              ),
              HomeFoodsSections()
            ],
          ),
        ),
      ),
    );
  }
}
