import 'package:flutter/material.dart';
import 'package:my_app/views/pages/home_page.dart';
import 'package:my_app/views/pages/profile_page.dart';
import 'package:my_app/data/notifiers.dart';
import 'package:my_app/views/pages/settings_page.dart';
import 'package:my_app/views/widgets/navbar_widget.dart';

String title = 'Elite App';

List<Widget> pages = [
  HomePage(),
  ProfilePage(),
];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Flutter App'),
      //   centerTitle: false,
      //   leading: Icon(Icons.login),
      //   actions: [
      //     Text('User'),
      //   ],
      //   backgroundColor: Colors.teal,
      // ),
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              isDarkModeNotifier.value = !isDarkModeNotifier.value;
            },
            icon: ValueListenableBuilder(
              valueListenable: isDarkModeNotifier,
              builder: (context, isDarkMode, child) {
                return Icon(
                  isDarkMode ? Icons.dark_mode : Icons.light_mode,
                );
              },
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return SettingsPage();
                },
              ));
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, selectedPage, child) {
          return pages.elementAt(selectedPage);
        },
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(child: Text('Drawer Header')),
            ListTile(
              title: Text('Logout'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Pressed add btn');
        },
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}
