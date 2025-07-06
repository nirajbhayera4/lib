import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

void main() => runApp(const MaterialApp(home: Home()));

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          /// AntDesign's Icon
          Icon(Bootstrap.google),
          Icon(Bootstrap.bootstrap),
          Icon(Bootstrap.github),
          Icon(BoxIcons.bxl_apple),
          Icon(BoxIcons.bx_git_branch),
          Icon(BoxIcons.bxs_cookie),
        ],
      ),
    );
  }
}
