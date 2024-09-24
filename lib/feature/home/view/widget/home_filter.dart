import 'package:flutter/material.dart';

final class HomeFilter extends StatefulWidget {
  const HomeFilter({super.key});

  @override
  State<HomeFilter> createState() => _HomeFilterState();
}

final class _HomeFilterState extends State<HomeFilter> {
  int selectedIndex = 0;
  List<String> categories = ["Foods", "Drinks", "Snacks", "Sauces"];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20.0),
      height: 50.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: index == 0 ? 20.0 : 10.0, right: index == categories.length - 1 ? 20.0 : 0),
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: selectedIndex == index ? Theme.of(context).colorScheme.primary : Colors.transparent,
                  width: 2.0,
                ),
              ),
            ),
            child: Text(
              categories[index],
              style: TextStyle(
                color: selectedIndex == index
                    ? Theme.of(context).colorScheme.primary
                    : Theme.of(context).colorScheme.onSurfaceVariant,
                fontWeight: selectedIndex == index ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
