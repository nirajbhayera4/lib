import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_1/WalletDetailsScreen.dart';

final ValueNotifier<ThemeMode> themeNotifier = ValueNotifier(ThemeMode.light);

void main() {
  runApp(ValueListenableBuilder<ThemeMode>(
    valueListenable: themeNotifier,
    builder: (_, ThemeMode currentMode, __) {
      return MaterialApp(
        title: 'Wallet App',
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        themeMode: currentMode,
        home: WalletDetailsScreen(),
        debugShowCheckedModeBanner: false,
      );
    },
  ));
}
