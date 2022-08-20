import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import '../domain/chat_model.dart';
import '../domain/pool_model.dart';
import '../domain/search_model.dart';
import '../domain/settings_model.dart';
import '../domain/timeline_model.dart';

// Class to create main layer of app
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  @override
  State<MainPage> createState() => _MainPageState();
}

// Class to create persistent bottom navigation bar
class _MainPageState extends State<MainPage> {
  Color mainColor = const Color(0xFF2631C1); //
  final PersistentTabController _controller =
  PersistentTabController(initialIndex: 0);
  // Customized widget for persistent bottom navigation bar
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Carpool"),
        elevation: 0,
        backgroundColor: mainColor,
      ),
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: const [
          HomePage(),
          SearchPage(),
          ChatPage(),
          NotificationPage(),
          ProfilePage(),
        ],
        items: _navBarsItems(),
        // 16 bottom navigation bar styles in total
        navBarStyle: NavBarStyle.style6,
      ),
    );
  }

  // Function to create bottom navigation bar items
  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [

      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.car_detailed),
        title: ("Pool"),
        activeColorPrimary: mainColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),

      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.search),
        title: ("Search"),
        activeColorPrimary: mainColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),

      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.chat_bubble),
        title: ("Chat"),
        activeColorPrimary: mainColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),

      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.arrow_2_squarepath),
        title: ("Timeline"),
        activeColorPrimary: mainColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),

      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.settings),
        title: ("Settings"),
        activeColorPrimary: mainColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),

    ];
  }
}