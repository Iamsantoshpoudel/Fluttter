import 'package:flutter/material.dart';
import 'package:poudelx/data/notifiers.dart';
import 'package:poudelx/views/pages/home_page.dart';
import 'package:poudelx/views/pages/profile_page.dart';
import 'package:poudelx/views/widgets/navbar_widgets.dart';

List<Widget> pages = [HomePage(), ProfilePage()];

class WidgetsTree extends StatelessWidget {
  const WidgetsTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
        actions: [
          IconButton(
            onPressed: () {
              isDarkModeNotifier.value = !isDarkModeNotifier.value;
            },
            icon: ValueListenableBuilder(
              valueListenable: isDarkModeNotifier,
              builder:
                  (BuildContext context, dynamic isdarkMood, Widget? child) {
                    return Icon(
                      isdarkMood ? Icons.light_mode : Icons.dark_mode,
                    );
                  },
            ),
          ),
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (BuildContext context, dynamic selectedPage, Widget? child) {
          return pages.elementAt(selectedPage);
        },
      ),
      bottomNavigationBar: NavbarWidgets(),
    );
  }
}
