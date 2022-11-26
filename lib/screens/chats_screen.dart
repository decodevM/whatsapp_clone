import 'package:cupertino_lists/cupertino_lists.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '/models/user_model.dart';
import '/widgets/chat_widget.dart';

class ChatScreens extends StatelessWidget {
  const ChatScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabView(
      builder: (context) => CupertinoPageScaffold(
        backgroundColor: CupertinoColors.systemGroupedBackground,
        child: CustomScrollView(
          slivers: [
            CupertinoSliverNavigationBar(
              leading: CupertinoButton(
                onPressed: () {},
                padding: EdgeInsets.zero,
                child: const Text('Edit'),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CupertinoButton(
                    onPressed: () {},
                    padding: EdgeInsets.zero,
                    child: const Icon(CupertinoIcons.camera),
                  ),
                  Tooltip(
                    message: 'New message',
                    child: CupertinoButton(
                      onPressed: () {},
                      padding: EdgeInsets.zero,
                      child: const Icon(
                        CupertinoIcons.square_arrow_up,
                      ),
                    ),
                  ),
                ],
              ),
              largeTitle: const Text('Chats'),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  SafeArea(
                    top: false,
                    child: Container(
                      color: CupertinoColors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CupertinoButton(
                                  onPressed: () {},
                                  padding: EdgeInsets.zero,
                                  child: const Text('Broadcast Lists'),
                                ),
                                CupertinoButton(
                                  onPressed: () {},
                                  padding: EdgeInsets.zero,
                                  child: const Text('New Group'),
                                ),
                              ],
                            ),
                          ),
                          CupertinoListSection(
                            // backgroundColor: CupertinoColors.white,
                            topMargin: 0,
                            children: [
                              ...List.generate(
                                users.length,
                                (index) => Column(
                                  children: [
                                    ChatWidget(
                                      user: users[index],
                                    ),
                                    const Divider(
                                      color: CupertinoColors.separator,
                                      indent: 60,
                                      height: 5,
                                    ),
                                    ChatWidget(
                                      user: users[users.length - index - 1],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
