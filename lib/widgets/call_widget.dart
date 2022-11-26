import 'package:cupertino_lists/cupertino_lists.dart';
import 'package:flutter/cupertino.dart';

import '/models/user_call_model.dart';

class CallWidget extends StatelessWidget {
  const CallWidget({Key? key, required this.user}) : super(key: key);
  final UserCallModel user;
  @override
  Widget build(BuildContext context) {
    return CupertinoListTile(
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            user.name!,
            style: TextStyle(
              color: user.callStatus == CallStatus.missed
                  ? CupertinoColors.systemRed
                  : null,
            ),
          ),
          if (user.missed != 1)
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                '(${user.missed})',
                style: TextStyle(
                  color: user.callStatus == CallStatus.missed
                      ? CupertinoColors.systemRed
                      : null,
                ),
              ),
            )
        ],
      ),
      leading: Container(
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/profiles/${user.image}',
            ),
            fit: BoxFit.cover,
          ),
          shape: BoxShape.circle,
        ),
      ),
      leadingSize: 80,
      subtitle: Row(
        children: [
          Icon(
            user.call == Call.phone
                ? CupertinoIcons.phone
                : CupertinoIcons.video_camera,
            color: CupertinoColors.inactiveGray,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
              user.callStatus == CallStatus.missed
                  ? 'Missed'
                  : (user.callStatus == CallStatus.incoming
                      ? 'Incoming'
                      : 'Outgoing'),
              style: const TextStyle(fontSize: 16)),
        ],
      ),
      trailing: Row(
        children: [
          Text(user.date!),
          CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: () {},
              child: const Icon(CupertinoIcons.info)),
        ],
      ),
    );
  }
}
