import 'package:flutter/cupertino.dart';
import 'package:whatsapp_clone/const/app_color.dart';
import 'package:whatsapp_clone/screens/chats_screen.dart';

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
                  label: 'Status'),
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
                  label: 'Chats'),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.settings), label: 'Settings'),
            ]),
        tabBuilder: (context, index) {
          switch (index) {
            case 0:
              return const Center(
                child: Text('Status'),
              );
            case 1:
              return const Center(
                child: Text('Calls'),
              );
            case 2:
              return const Center(
                child: Text('Communities'),
              );
            case 3:
              return ChatScreens();
            case 4:
              return const Center(
                child: Text('Settings'),
              );
            default:
              return const Center(
                child: Text('New'),
              );
          }
        });
  }
}
