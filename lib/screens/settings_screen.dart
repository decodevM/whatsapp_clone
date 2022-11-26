import 'package:cupertino_lists/cupertino_lists.dart';
import 'package:flutter/cupertino.dart';

import '/const/app_color.dart';
import '/widgets/custom_cupertino_list.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabView(
      builder: (context) => CupertinoPageScaffold(
        backgroundColor: CupertinoColors.systemGroupedBackground,
        child: CustomScrollView(
          slivers: [
            const CupertinoSliverNavigationBar(
              largeTitle: Text('Settings'),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  SafeArea(
                    top: false,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CupertinoListSection.insetGrouped(
                          children: [
                            CupertinoListTile(
                              title: const Text('Averie Woodard'),
                              subtitle: const Text(
                                'Hello. I\'m using WhatsApp',
                                style: TextStyle(fontSize: 16),
                                overflow: TextOverflow.ellipsis,
                              ),
                              padding: EdgeInsets.zero,
                              leadingSize: 80,
                              leading: Container(
                                margin: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/profiles/averie-woodard.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        CupertinoListSection.insetGrouped(
                          children: [
                            const CustomCupertinoList(
                              icon: CupertinoIcons.star,
                              title: 'Starred Messages',
                              color: CupertinoColors.systemYellow,
                            ),
                            CustomCupertinoList(
                                icon: CupertinoIcons.device_laptop,
                                title: 'Linked Devices',
                                color: AppColor.tealGreen),
                          ],
                        ),
                        CupertinoListSection.insetGrouped(
                          children: const [
                            CustomCupertinoList(
                              icon: CupertinoIcons.person,
                              title: 'Account',
                            ),
                            CustomCupertinoList(
                              icon: CupertinoIcons.lock,
                              title: 'Privacy',
                              color: CupertinoColors.systemTeal,
                            ),
                            CustomCupertinoList(
                              icon: CupertinoIcons.conversation_bubble,
                              title: 'Chats',
                              color: CupertinoColors.activeGreen,
                            ),
                            CustomCupertinoList(
                              icon: CupertinoIcons.app_badge,
                              title: 'Notifications',
                              color: CupertinoColors.systemRed,
                            ),
                            CustomCupertinoList(
                              icon: CupertinoIcons.arrow_up_arrow_down,
                              title: 'Storage and Data',
                              color: CupertinoColors.activeGreen,
                            ),
                          ],
                        ),
                        CupertinoListSection.insetGrouped(
                          children: const [
                            CustomCupertinoList(
                              icon: CupertinoIcons.info,
                              title: 'Help',
                            ),
                            CustomCupertinoList(
                              icon: CupertinoIcons.heart,
                              title: 'Tell a Friend',
                              color: CupertinoColors.systemPink,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
