import 'package:cupertino_lists/cupertino_lists.dart';
import 'package:flutter/cupertino.dart';

class CustomCupertinoList extends StatelessWidget {
  const CustomCupertinoList({
    Key? key,
    required this.icon,
    this.color = CupertinoColors.activeBlue,
    required this.title,
  }) : super(key: key);
  final IconData icon;
  final Color color;
  final String title;
  @override
  Widget build(BuildContext context) {
    return CupertinoListTile(
      leading: Icon(icon, color: color),
      title: Text(title),
      trailing: const CupertinoListTileChevron(),
      onTap: () {},
    );
  }
}
