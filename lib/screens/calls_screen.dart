import 'package:cupertino_lists/cupertino_lists.dart';
import 'package:flutter/cupertino.dart';

import '/models/user_call_model.dart';
import '/widgets/call_widget.dart';

class CallsScreen extends StatefulWidget {
  const CallsScreen({Key? key}) : super(key: key);

  @override
  State<CallsScreen> createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  int segmentIndex = 0;
  void updateSegmentIndex(int? index) {
    setState(() {
      segmentIndex = index ?? 0;
    });
  }

  final List<UserCallModel> userCallsMissed =
      calls.where((user) => user.callStatus == CallStatus.missed).toList();
  @override
  Widget build(BuildContext context) {
    return CupertinoTabView(
      builder: (context) => CupertinoPageScaffold(
        backgroundColor: CupertinoColors.systemGroupedBackground,
        child: CustomScrollView(
          shrinkWrap: true,
          slivers: [
            CupertinoSliverNavigationBar(
              largeTitle: const Text('Calls'),
              middle: CupertinoSlidingSegmentedControl(
                children: {
                  0: Text(
                    'All',
                    style: TextStyle(
                        color: segmentIndex == 0
                            ? CupertinoColors.white
                            : CupertinoColors.activeBlue),
                  ),
                  1: Text(
                    'Missed',
                    style: TextStyle(
                        color: segmentIndex == 1
                            ? CupertinoColors.white
                            : CupertinoColors.activeBlue),
                  ),
                },
                onValueChanged: updateSegmentIndex,
                groupValue: segmentIndex,
                thumbColor: CupertinoColors.activeBlue,
                // thumbColor: CupertinoColors.activeBlue,
              ),
              leading: CupertinoButton(
                onPressed: () {},
                padding: EdgeInsets.zero,
                child: const Text('Edit'),
              ),
              trailing: CupertinoButton(
                onPressed: () {},
                padding: EdgeInsets.zero,
                child: const Icon(CupertinoIcons.phone),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  SafeArea(
                    top: false,
                    child: CupertinoListSection(
                      topMargin: 10,
                      children: [
                        if (segmentIndex == 0)
                          ...List.generate(
                            calls.length,
                            (index) => CallWidget(user: calls[index]),
                          ),
                        if (segmentIndex == 1)
                          ...List.generate(
                            userCallsMissed.length,
                            (index) => CallWidget(user: userCallsMissed[index]),
                          ),
                        // CallWidget(user: calls[1]),
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
