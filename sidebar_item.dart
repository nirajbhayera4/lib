import 'package:flutter/material.dart';

class SidebarItem extends StatelessWidget {
  final Widget icon;
  final String label;

  const SidebarItem({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(label, style: TextStyle(color: Colors.white)),
      onTap: () {},
    );
  }
}
