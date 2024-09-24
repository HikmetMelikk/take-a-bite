import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:take_a_bite/product/router/custom_drawer.dart';

final class ScaffoldWithNavBar extends StatelessWidget {
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
        actions: _getAppBarActions(navigationShell.currentIndex),
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
    return switch (index) {
      0 => 'Home',
      1 => 'Favorites',
      2 => 'Profile',
      _ => '',
    };
  }

  List<Widget> _getAppBarActions(int index) {
    return switch (index) {
      0 => [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_rounded),
          )
        ],
      _ => [],
    };
  }

  void _onTap(BuildContext context, int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }
}
