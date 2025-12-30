// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:my_app/data/constants.dart';
import 'package:my_app/data/notifiers.dart';
import 'package:my_app/views/pages/home_page.dart';
import 'package:my_app/views/pages/profile_page.dart';
import 'package:my_app/views/pages/settings_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:my_app/views/widgets/navbar_widget.dart';

import '../widgets/navbar_widget.dart';

// pages list (from image)
List<Widget> pages = [
  const HomePage(),
  const ProfilePage(),
];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My APP'),
        actions: [
          IconButton(
            onPressed: () async {
              isDarkModeNotifier.value = !isDarkModeNotifier.value;
              final SharedPreferences prefs =
                  await SharedPreferences.getInstance();
              await prefs.setBool(
                  KConstants.themeModeKey, !isDarkModeNotifier.value);
            },
            icon: ValueListenableBuilder(
              valueListenable: isDarkModeNotifier,
              builder: (context, isDarkMode, child) {
                return Icon(
                  isDarkMode ? Icons.light_mode : Icons.dark_mode,
                ); //
              },
            ), // ValueListenableBuilder
          ), // IconButton
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SettingsPage(
                      title: 'Settings dsdf',
                    );
                  },
                ),
              );
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ), // AppBar
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, selectedPage, child) {
          return pages.elementAt(selectedPage);
        },
      ), // ValueListenableBuilder
      bottomNavigationBar: NavbarWidget(),
    ); // Scaffold
  }
}
