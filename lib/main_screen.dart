import 'package:flutter/cupertino.dart';

import '/const/app_color.dart';
import '/screens/calls_screen.dart';
import '/screens/chats_screen.dart';
import '/screens/settings_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        inactiveColor: CupertinoColors.inactiveGray,
        activeColor: AppColor.tealGreen,
        currentIndex: 3,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.camera_on_rectangle),
            label: 'Status',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.phone),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.group),
            label: 'Communities',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.conversation_bubble),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.video_camera), label: 'Calls Videos')
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return const Center(
              child: Text('Status'),
            );
          case 1:
            return const Center(
              child: CallsScreen(),
            );
          case 2:
            return const Center(
              child: Text('Communities'),
            );
          case 3:
            return const ChatScreens();
          case 4:
            return const Center(
              child: SettingsScreen(),
            );
          default:
            return const Center(
              child: Text('New'),
            );
        }
      },
    );
  }
}
