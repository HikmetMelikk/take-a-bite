import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:take_a_bite/feature/home/view/widget/custom_drawer.dart';

class ScaffoldWithNavBar extends StatelessWidget {
  const ScaffoldWithNavBar({
    required this.navigationShell,
    Key? key,
  }) : super(key: key ?? const ValueKey<String>('ScaffoldWithNavBar'));

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_getAppBarTitle(navigationShell.currentIndex)),
        centerTitle: true,
        actions: [
          if (navigationShell.currentIndex == 0)
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart_rounded),
            )
        ],
      ),
      drawer: const CustomDrawer(),
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: Theme.of(context).colorScheme.tertiary,
        type: BottomNavigationBarType.shifting,
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
        elevation: 0,
        selectedIconTheme: const IconThemeData(size: 24),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorites'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: navigationShell.currentIndex,
        onTap: (int index) => _onTap(context, index),
      ),
    );
  }

  String _getAppBarTitle(int index) {
    switch (index) {
      case 0:
        return 'Home';
      case 1:
        return 'Favorites';
      case 2:
        return 'Profile';
      default:
        return '';
    }
  }

  void _onTap(BuildContext context, int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }
}
