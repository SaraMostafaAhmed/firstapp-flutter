import 'package:first_app/dashboard/dashboard_screen.dart';
import 'package:first_app/favorite/favorite_screen.dart';
import 'package:first_app/profile/profile_page/profile_page.dart';
import 'package:flutter/material.dart';

import '../quote/quote_screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          [
            DashboardScreen(),
            QuoteScreen(),
            FavoriteScreen(),
            ProfilePage(),
          ][_selectedIndex],
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },

        destinations: [
          NavigationDestination(
            icon: Icon(Icons.dashboard),
            label: "dashboard",
          ),
          NavigationDestination(icon: Icon(Icons.format_quote), label: "quote"),
          NavigationDestination(icon: Icon(Icons.favorite), label: "favorite"),
          NavigationDestination(icon: Icon(Icons.person), label: "profile"),
        ],
      ),
    );
  }
}
