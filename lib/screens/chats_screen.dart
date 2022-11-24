import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/chat_widget.dart';

import '../models/user_model.dart';

class ChatScreens extends StatelessWidget {
  ChatScreens({Key? key}) : super(key: key);
  List<UserModel> users = [
    UserModel(
      name: 'Lucas Sankey',
      image: 'lucas-sankey.jpg',
      date: '10:52 PM',
      isRead: false,
      isSend: true,
      message:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      messageNotRead: 3,
    ),
    UserModel(
      name: 'aiony-haust',
      image: 'aiony-haust.jpg',
      date: '10:38 PM',
      isRead: true,
      isSend: false,
      message: 'There are many variations of passages of Lorem Ipsum available',
      messageNotRead: 0,
    ),
    UserModel(
      name: 'Michael Frattaroli',
      image: 'michael-frattaroli.jpg',
      date: '8:08 AM',
      isRead: false,
      isSend: true,
      message: 'The standard chunk of Lorem Ipsum used since the 1500s',
      messageNotRead: 1,
    ),
    UserModel(
      name: 'Foto Sushi',
      image: 'foto-sushi.jpg',
      date: '23/11/22',
      isRead: true,
      isSend: false,
      message: 'Hello im Lorem....',
      messageNotRead: 0,
    ),
    UserModel(
      name: 'Averie Woodard',
      image: 'averie-woodard.jpg',
      date: '23/11/22',
      isRead: true,
      isSend: true,
      message:
          'Contrary to popular belief, Lorem Ipsum is not simply random text',
      messageNotRead: 0,
    ),
  ];
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
