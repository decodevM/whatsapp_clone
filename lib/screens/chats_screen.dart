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
                  const Divider(
                    color: CupertinoColors.separator,
                  ),
                  ...List.generate(
                    users.length,
                    (index) => Column(
                      children: [
                        ChatWidget(
                          user: users[index],
                        ),
                        ChatWidget(
                          user: users[users.length - index - 1],
                        ),
                        if (index != users.length - 1)
                          const Divider(
                            color: CupertinoColors.separator,
                            indent: 100,
                          ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
