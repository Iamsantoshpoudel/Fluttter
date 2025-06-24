import 'package:flutter/material.dart';
import 'package:poudelx/data/notifiers.dart';

class NavbarWidgets extends StatelessWidget {
  const NavbarWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedPageNotifier,
      builder: (BuildContext context, dynamic selectedPage, Widget? child) {
        return NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          ],
          onDestinationSelected: (int value) {
            // Handle navigation taps
            selectedPageNotifier.value = value;
          },
          selectedIndex: selectedPage,
        );
      },
    );
  }
}
