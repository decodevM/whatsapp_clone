import 'package:flutter/cupertino.dart';
import '/models/user_model.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({Key? key, required this.user}) : super(key: key);
  final UserModel user;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      // height: 100,
      child: Row(
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              color: CupertinoColors.inactiveGray,
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/images/profiles/${user.image}'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(user.name!,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20)),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      if (user.isRead!)
                        Row(
                          children: [
                            const Icon(
                              CupertinoIcons.check_mark,
                              color: CupertinoColors.activeBlue,
                              size: 20,
                            ),
                            Transform.translate(
                              offset: const Offset(-15, 0),
                              child: const Icon(
                                CupertinoIcons.check_mark,
                                color: CupertinoColors.activeBlue,
                                size: 20,
                              ),
                            ),
                          ],
                        ),
                      Expanded(
                        child: Transform.translate(
                          offset: Offset(user.isRead! ? -15 : 0, 0),
                          child: Text(
                            user.message!,
                            style: TextStyle(
                              color:
                                  CupertinoColors.inactiveGray.withOpacity(.8),
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                Text(
                  user.date!,
                  style: TextStyle(
                    color: user.isRead!
                        ? CupertinoColors.inactiveGray
                        : CupertinoColors.activeBlue,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                if (user.messageNotRead != 0)
                  Container(
                    height: 20,
                    width: 20,
                    decoration: const BoxDecoration(
                      color: CupertinoColors.activeBlue,
                      shape: BoxShape.circle,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      user.messageNotRead.toString(),
                      style: const TextStyle(color: CupertinoColors.white),
                    ),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
