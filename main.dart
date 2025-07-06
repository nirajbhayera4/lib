import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:flutter_application_1/WalletScreen.dart';
import 'package:flutter_application_1/wallet_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Expense Tracker'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyWalletPage extends StatelessWidget {
  const MyWalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    // SVG string (your wallet SVG)
    const String walletSvg = '''
      <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
        <!--!Font Awesome Free 6.7.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2025 Fonticons, Inc.-->
        <path d="M64 32C28.7 32 0 60.7 0 96L0 416c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-224c0-35.3-28.7-64-64-64L80 128c-8.8 0-16-7.2-16-16s7.2-16 16-16l368 0c17.7 0 32-14.3 32-32s-14.3-32-32-32L64 32zM416 272a32 32 0 1 1 0 64 32 32 0 1 1 0-64z"/>
      </svg>
    ''';
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Wallet Page'),
      ),
      body: Center(child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => WalletScreen()),
          );
        },
      )),
    );
  }
}

class MyCardPage extends StatelessWidget {
  const MyCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    // SVG string (your wallet SVG)
    const String CardSvg = '''
      <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512"><!--!Font Awesome Free 6.7.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2025 Fonticons, Inc.--><path d="M64 32C28.7 32 0 60.7 0 96l0 32 576 0 0-32c0-35.3-28.7-64-64-64L64 32zM576 224L0 224 0 416c0 35.3 28.7 64 64 64l448 0c35.3 0 64-28.7 64-64l0-192zM112 352l64 0c8.8 0 16 7.2 16 16s-7.2 16-16 16l-64 0c-8.8 0-16-7.2-16-16s7.2-16 16-16zm112 16c0-8.8 7.2-16 16-16l128 0c8.8 0 16 7.2 16 16s-7.2 16-16 16l-128 0c-8.8 0-16-7.2-16-16z"/></svg>
    ''';
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Card Page'),
      ),
      body: Center(
        child: Text('My Card Page Content'),
      ),
    );
  }
}

class MyFinancePage extends StatelessWidget {
  const MyFinancePage({super.key});

  @override
  Widget build(BuildContext context) {
    // SVG string (your wallet SVG)
    const String FinanceSvg = '''
      <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><!--!Font Awesome Free 6.7.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2025 Fonticons, Inc.--><path d="M512 80c0 18-14.3 34.6-38.4 48c-29.1 16.1-72.5 27.5-122.3 30.9c-3.7-1.8-7.4-3.5-11.3-5C300.6 137.4 248.2 128 192 128c-8.3 0-16.4 .2-24.5 .6l-1.1-.6C142.3 114.6 128 98 128 80c0-44.2 86-80 192-80S512 35.8 512 80zM160.7 161.1c10.2-.7 20.7-1.1 31.3-1.1c62.2 0 117.4 12.3 152.5 31.4C369.3 204.9 384 221.7 384 240c0 4-.7 7.9-2.1 11.7c-4.6 13.2-17 25.3-35 35.5c0 0 0 0 0 0c-.1 .1-.3 .1-.4 .2c0 0 0 0 0 0s0 0 0 0c-.3 .2-.6 .3-.9 .5c-35 19.4-90.8 32-153.6 32c-59.6 0-112.9-11.3-148.2-29.1c-1.9-.9-3.7-1.9-5.5-2.9C14.3 274.6 0 258 0 240c0-34.8 53.4-64.5 128-75.4c10.5-1.5 21.4-2.7 32.7-3.5zM416 240c0-21.9-10.6-39.9-24.1-53.4c28.3-4.4 54.2-11.4 76.2-20.5c16.3-6.8 31.5-15.2 43.9-25.5l0 35.4c0 19.3-16.5 37.1-43.8 50.9c-14.6 7.4-32.4 13.7-52.4 18.5c.1-1.8 .2-3.5 .2-5.3zm-32 96c0 18-14.3 34.6-38.4 48c-1.8 1-3.6 1.9-5.5 2.9C304.9 404.7 251.6 416 192 416c-62.8 0-118.6-12.6-153.6-32C14.3 370.6 0 354 0 336l0-35.4c12.5 10.3 27.6 18.7 43.9 25.5C83.4 342.6 135.8 352 192 352s108.6-9.4 148.1-25.9c7.8-3.2 15.3-6.9 22.4-10.9c6.1-3.4 11.8-7.2 17.2-11.2c1.5-1.1 2.9-2.3 4.3-3.4l0 3.4 0 5.7 0 26.3zm32 0l0-32 0-25.9c19-4.2 36.5-9.5 52.1-16c16.3-6.8 31.5-15.2 43.9-25.5l0 35.4c0 10.5-5 21-14.9 30.9c-16.3 16.3-45 29.7-81.3 38.4c.1-1.7 .2-3.5 .2-5.3zM192 448c56.2 0 108.6-9.4 148.1-25.9c16.3-6.8 31.5-15.2 43.9-25.5l0 35.4c0 44.2-86 80-192 80S0 476.2 0 432l0-35.4c12.5 10.3 27.6 18.7 43.9 25.5C83.4 438.6 135.8 448 192 448z"/></svg>
    ''';
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Finance Page'),
      ),
      body: Center(
        child: Text('My Finance Page Content'),
      ),
    );
  }
}

class MyRecentTransactionsPage extends StatelessWidget {
  const MyRecentTransactionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // SVG string (your wallet SVG)
    const String RecentTransactionsSvg = '''
      <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 512"><!--!Font Awesome Free 6.7.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2025 Fonticons, Inc.--><path d="M535 41c-9.4-9.4-9.4-24.6 0-33.9s24.6-9.4 33.9 0l64 64c4.5 4.5 7 10.6 7 17s-2.5 12.5-7 17l-64 64c-9.4 9.4-24.6 9.4-33.9 0s-9.4-24.6 0-33.9l23-23L384 112c-13.3 0-24-10.7-24-24s10.7-24 24-24l174.1 0L535 41zM105 377l-23 23L256 400c13.3 0 24 10.7 24 24s-10.7 24-24 24L81.9 448l23 23c9.4 9.4 9.4 24.6 0 33.9s-24.6 9.4-33.9 0L7 441c-4.5-4.5-7-10.6-7-17s2.5-12.5 7-17l64-64c9.4-9.4 24.6-9.4 33.9 0s9.4 24.6 0 33.9zM96 64l241.9 0c-3.7 7.2-5.9 15.3-5.9 24c0 28.7 23.3 52 52 52l117.4 0c-4 17 .6 35.5 13.8 48.8c20.3 20.3 53.2 20.3 73.5 0L608 169.5 608 384c0 35.3-28.7 64-64 64l-241.9 0c3.7-7.2 5.9-15.3 5.9-24c0-28.7-23.3-52-52-52l-117.4 0c4-17-.6-35.5-13.8-48.8c-20.3-20.3-53.2-20.3-73.5 0L32 342.5 32 128c0-35.3 28.7-64 64-64zm64 64l-64 0 0 64c35.3 0 64-28.7 64-64zM544 320c-35.3 0-64 28.7-64 64l64 0 0-64zM320 352a96 96 0 1 0 0-192 96 96 0 1 0 0 192z"/></svg>
    ''';
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Recent Transactions Page'),
      ),
      body: Center(
        child: Text('My Recent Transactions Page Content'),
      ),
    );
  }
}

class MySettingsPage extends StatelessWidget {
  const MySettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // SVG string (your wallet SVG)
    const String SettingsSvg = '''
      <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 512"><!--!Font Awesome Free 6.7.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2025 Fonticons, Inc.--><path d="M535 41c-9.4-9.4-9.4-24.6 0-33.9s24.6-9.4 33.9 0l64 64c4.5 4.5 7 10.6 7 17s-2.5 12.5-7 17l-64 64c-9.4 9.4-24.6 9.4-33.9 0s-9.4-24.6 0-33.9l23-23L384 112c-13.3 0-24-10.7-24-24s10.7-24 24-24l174.1 0L535 41zM105 377l-23 23L256 400c13.3 0 24 10.7 24 24s-10.7 24-24 24L81.9 448l23 23c9.4 9.4 9.4 24.6 0 33.9s-24.6 9.4-33.9 0L7 441c-4.5-4.5-7-10.6-7-17s2.5-12.5 7-17l64-64c9.4-9.4 24.6-9.4 33.9 0s9.4 24.6 0 33.9zM96 64l241.9 0c-3.7 7.2-5.9 15.3-5.9 24c0 28.7 23.3 52 52 52l117.4 0c-4 17 .6 35.5 13.8 48.8c20.3 20.3 53.2 20.3 73.5 0L608 169.5 608 384c0 35.3-28.7 64-64 64l-241.9 0c3.7-7.2 5.9-15.3 5.9-24c0-28.7-23.3-52-52-52l-117.4 0c4-17-.6-35.5-13.8-48.8c-20.3-20.3-53.2-20.3-73.5 0L32 342.5 32 128c0-35.3 28.7-64 64-64zm64 64l-64 0 0 64c35.3 0 64-28.7 64-64zM544 320c-35.3 0-64 28.7-64 64l64 0 0-64zM320 352a96 96 0 1 0 0-192 96 96 0 1 0 0 192z"/></svg>
    ''';
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Settings Transactions Page'),
      ),
      body: Center(
        child: Text('My Settings Page Content'),
      ),
    );
  }
}

class MyUserPage extends StatelessWidget {
  const MyUserPage({super.key});

  @override
  Widget build(BuildContext context) {
    // SVG string (your wallet SVG)
    const String UserSvg = '''
      <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 512"><!--!Font Awesome Free 6.7.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2025 Fonticons, Inc.--><path d="M535 41c-9.4-9.4-9.4-24.6 0-33.9s24.6-9.4 33.9 0l64 64c4.5 4.5 7 10.6 7 17s-2.5 12.5-7 17l-64 64c-9.4 9.4-24.6 9.4-33.9 0s-9.4-24.6 0-33.9l23-23L384 112c-13.3 0-24-10.7-24-24s10.7-24 24-24l174.1 0L535 41zM105 377l-23 23L256 400c13.3 0 24 10.7 24 24s-10.7 24-24 24L81.9 448l23 23c9.4 9.4 9.4 24.6 0 33.9s-24.6 9.4-33.9 0L7 441c-4.5-4.5-7-10.6-7-17s2.5-12.5 7-17l64-64c9.4-9.4 24.6-9.4 33.9 0s9.4 24.6 0 33.9zM96 64l241.9 0c-3.7 7.2-5.9 15.3-5.9 24c0 28.7 23.3 52 52 52l117.4 0c-4 17 .6 35.5 13.8 48.8c20.3 20.3 53.2 20.3 73.5 0L608 169.5 608 384c0 35.3-28.7 64-64 64l-241.9 0c3.7-7.2 5.9-15.3 5.9-24c0-28.7-23.3-52-52-52l-117.4 0c4-17-.6-35.5-13.8-48.8c-20.3-20.3-53.2-20.3-73.5 0L32 342.5 32 128c0-35.3 28.7-64 64-64zm64 64l-64 0 0 64c35.3 0 64-28.7 64-64zM544 320c-35.3 0-64 28.7-64 64l64 0 0-64zM320 352a96 96 0 1 0 0-192 96 96 0 1 0 0 192z"/></svg>
    ''';
    return Scaffold(
      appBar: AppBar(
        title: const Text('My User Page'),
      ),
      body: Center(
        child: Text('My User Page Content'),
      ),
    );
  }
}

class MyMenuPage extends StatelessWidget {
  const MyMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    // SVG string (your wallet SVG)
    const String MenuSvg = '''
      <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 128 512"><!--!Font Awesome Free 6.7.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2025 Fonticons, Inc.--><path d="M64 360a56 56 0 1 0 0 112 56 56 0 1 0 0-112zm0-160a56 56 0 1 0 0 112 56 56 0 1 0 0-112zM120 96A56 56 0 1 0 8 96a56 56 0 1 0 112 0z"/></svg>
    ''';
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Menu Page'),
      ),
      body: Center(
        child: Text('My Menu Content'),
      ),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              horizontal: constraints.maxWidth > 1024 ? 100 : 20,
              vertical: 40,
            ),
            child: Body(),
          );
        },
      ),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    // Define breakpoints
    final isMobile = screenWidth < 600;
    final isTablet = screenWidth >= 600 && screenWidth < 1024;
    final isDesktop = screenWidth >= 1024;

    if (isMobile) {
      // For small screens (stack vertically)
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: _introSection(),
          ),
          const SizedBox(height: 30),
          Lottie.network(
            'https://lottie.host/18fe6f43-fb62-4ea8-b49e-1a0e042154a4/gPpSj3MdXn.json',
            width: 200,
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: _formSection(),
          ),
        ],
      );
    }

    // For tablets and desktops (side-by-side)
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(width: 280, child: _introSection()),
        Lottie.network(
          'https://lottie.host/18fe6f43-fb62-4ea8-b49e-1a0e042154a4/gPpSj3MdXn.json',
          width: isTablet ? 200 : 300,
        ),
        Container(
          width: 320,
          padding: EdgeInsets.symmetric(vertical: screenWidth / 20),
          child: _formSection(),
        ),
      ],
    );
  }

  Widget _introSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Sign In to \nMy Application',
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            )),
        const SizedBox(height: 30),
        Text(
          "If you don't have an account",
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Text(
              "You can",
              style: GoogleFonts.poppins(
                textStyle:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(width: 10),
            Text(
              "Register here!",
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 15,
                      fontWeight: FontWeight.bold)),
            ),
          ],
        ),
        const SizedBox(height: 30),
        Lottie.network(
          'https://lottie.host/e596c305-0021-4251-9fcb-a16af66fb1fc/APJA8KMmZg.json',
          width: 200,
        ),
      ],
    );
  }

  Widget _formSection() {
    return _formLogin();
  }
}

Widget _formLogin() {
  return Column(children: [
    Text(
      "Welcome!",
      style: GoogleFonts.poppins(
        fontSize: 50,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
    SizedBox(height: 10),
    TextField(
      decoration: InputDecoration(
        hintText: "Enter email or phone number",
        hintStyle: GoogleFonts.poppins(
          color: Colors.grey[700],
          fontSize: 14,
        ),
        fillColor: const Color.fromARGB(255, 215, 217, 217),
        filled: true,
        labelStyle: GoogleFonts.poppins(
          color: Colors.black,
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
        contentPadding: EdgeInsets.only(left: 30),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blueGrey),
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blueGrey),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    ),
    SizedBox(height: 30),
    TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: "password",
        hintStyle: GoogleFonts.poppins(
          color: Colors.grey[700],
          fontSize: 14,
        ),
        counterText: "Forgot password?",
        counterStyle: GoogleFonts.poppins(
          color: Colors.blue,
          fontSize: 12,
        ),
        suffixIcon: Icon(
          Icons.visibility_off_outlined,
          color: const Color.fromARGB(255, 210, 206, 206),
        ),
        fillColor: const Color.fromARGB(255, 194, 196, 197),
        filled: true,
        labelStyle: GoogleFonts.poppins(
          color: Colors.black,
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
        contentPadding: EdgeInsets.only(left: 30),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blueGrey),
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blueGrey),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    ),
    SizedBox(height: 40),
    Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.deepPurple,
            ),
          ],
        ),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurple,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: Container(
            width: double.infinity,
            height: 40,
            alignment: Alignment.center,
            child: Text(
              'Sign In',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        )),
    SizedBox(height: 40),
    Row(
      children: [
        Expanded(
            child: Divider(
                height: 40, color: const Color.fromARGB(255, 188, 188, 188))),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "or continue with",
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                color: Color.fromARGB(255, 105, 104, 104),
                fontSize: 14,
                fontWeight: FontWeight.bold,
              )),
            )),
        Expanded(
            child: Divider(
                height: 40, color: const Color.fromARGB(255, 188, 188, 188))),
      ],
    ),
    SizedBox(height: 50),
    Wrap(
      spacing: 10,
      runSpacing: 10,
      alignment: WrapAlignment.center,
      children: [
        _loginWithButton(
          image: Image.network(
            'https://cdn-icons-png.flaticon.com/512/300/300221.png',
            width: 24,
            height: 24,
          ),
          text: "Google",
          onTap: () {},
        ),
        _loginWithButton(
          image: Image.network(
            'https://cdn-icons-png.flaticon.com/128/518/518714.png',
            width: 24,
            height: 24,
          ),
          text: "Apple",
          onTap: () {},
        ),
        _loginWithButton(
          image: Image.network(
            'https://cdn-icons-png.flaticon.com/512/270/270798.png',
            width: 24,
            height: 24,
          ),
          text: "Github",
          onTap: () {},
        ),
      ],
    )
  ]);
}

Widget _loginWithButton({
  required Widget image,
  required String text,
  required VoidCallback onTap,
}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          image,
          SizedBox(width: 10),
          Text(
            text,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _menuItem(title: "Home", isActive: true),
              _menuItem(title: "About us", isActive: true),
              _menuItem(title: "Contact us", isActive: true),
              _menuItem(title: "Help", isActive: true)
            ],
          ),
          Row(
            children: [
              _menuItem(title: "Sign Up", isActive: true),
              _registerButton(),
            ],
          )
        ],
      ),
    );
  }
}

Widget _registerButton() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 8,
            blurRadius: 10,
          ),
        ]),
    child: Text("Register",
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black54)),
  );
}

Widget _menuItem({required String title, bool isActive = false}) {
  return Padding(
      padding: EdgeInsets.only(right: 75),
      child: Column(children: [
        Text(
          '$title',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: isActive ? Colors.deepPurple : Colors.grey),
        ),
        SizedBox(height: 6),
        isActive
            ? Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(30),
                ))
            : SizedBox()
      ]));
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          widget.title,
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        leading: IconButton(
          icon: SvgPicture.string(
            '''<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 128 512"><!--!Font Awesome Free 6.7.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2025 Fonticons, Inc.--><path d="M64 360a56 56 0 1 0 0 112 56 56 0 1 0 0-112zm0-160a56 56 0 1 0 0 112 56 56 0 1 0 0-112zM120 96A56 56 0 1 0 8 96a56 56 0 1 0 112 0z"/></svg>''',
            color: Colors.white,
            width: 24,
            height: 24,
          ),
          onPressed: () => _scaffoldKey.currentState?.openDrawer(),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
              // TODO: Add signup navigation
            },
            child: Text(
              'Signup',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.black,
              height: 60, // smaller height than default DrawerHeader
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Ringku',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  ListTile(
                    leading: SvgPicture.string(
                      '''<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
                          <path d="M64 32C28.7 32 0 60.7 0 96L0 416c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-224c0-35.3-28.7-64-64-64L80 128c-8.8 0-16-7.2-16-16s7.2-16 16-16l368 0c17.7 0 32-14.3 32-32s-14.3-32-32-32L64 32zM416 272a32 32 0 1 1 0 64 32 32 0 1 1 0-64z"/>
                        </svg>''',
                      color: Colors.white, // Apply color here
                      width: 24,
                      height: 24,
                    ),
                    title: Text(
                      'My Wallet',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(color: Colors.white),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WalletScreen()));
                    },
                  ),
                  ListTile(
                    leading: SvgPicture.string(
                      '''<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512"><!--!Font Awesome Free 6.7.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2025 Fonticons, Inc.--><path d="M64 32C28.7 32 0 60.7 0 96l0 32 576 0 0-32c0-35.3-28.7-64-64-64L64 32zM576 224L0 224 0 416c0 35.3 28.7 64 64 64l448 0c35.3 0 64-28.7 64-64l0-192zM112 352l64 0c8.8 0 16 7.2 16 16s-7.2 16-16 16l-64 0c-8.8 0-16-7.2-16-16s7.2-16 16-16zm112 16c0-8.8 7.2-16 16-16l128 0c8.8 0 16 7.2 16 16s-7.2 16-16 16l-128 0c-8.8 0-16-7.2-16-16z"/></svg>''',
                      color: Colors.white, // Apply color here
                      width: 24,
                      height: 24,
                    ),
                    title: Text(
                      'My Card',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: SvgPicture.string(
                      '''<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><!--!Font Awesome Free 6.7.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2025 Fonticons, Inc.--><path d="M512 80c0 18-14.3 34.6-38.4 48c-29.1 16.1-72.5 27.5-122.3 30.9c-3.7-1.8-7.4-3.5-11.3-5C300.6 137.4 248.2 128 192 128c-8.3 0-16.4 .2-24.5 .6l-1.1-.6C142.3 114.6 128 98 128 80c0-44.2 86-80 192-80S512 35.8 512 80zM160.7 161.1c10.2-.7 20.7-1.1 31.3-1.1c62.2 0 117.4 12.3 152.5 31.4C369.3 204.9 384 221.7 384 240c0 4-.7 7.9-2.1 11.7c-4.6 13.2-17 25.3-35 35.5c0 0 0 0 0 0c-.1 .1-.3 .1-.4 .2c0 0 0 0 0 0s0 0 0 0c-.3 .2-.6 .3-.9 .5c-35 19.4-90.8 32-153.6 32c-59.6 0-112.9-11.3-148.2-29.1c-1.9-.9-3.7-1.9-5.5-2.9C14.3 274.6 0 258 0 240c0-34.8 53.4-64.5 128-75.4c10.5-1.5 21.4-2.7 32.7-3.5zM416 240c0-21.9-10.6-39.9-24.1-53.4c28.3-4.4 54.2-11.4 76.2-20.5c16.3-6.8 31.5-15.2 43.9-25.5l0 35.4c0 19.3-16.5 37.1-43.8 50.9c-14.6 7.4-32.4 13.7-52.4 18.5c.1-1.8 .2-3.5 .2-5.3zm-32 96c0 18-14.3 34.6-38.4 48c-1.8 1-3.6 1.9-5.5 2.9C304.9 404.7 251.6 416 192 416c-62.8 0-118.6-12.6-153.6-32C14.3 370.6 0 354 0 336l0-35.4c12.5 10.3 27.6 18.7 43.9 25.5C83.4 342.6 135.8 352 192 352s108.6-9.4 148.1-25.9c7.8-3.2 15.3-6.9 22.4-10.9c6.1-3.4 11.8-7.2 17.2-11.2c1.5-1.1 2.9-2.3 4.3-3.4l0 3.4 0 5.7 0 26.3zm32 0l0-32 0-25.9c19-4.2 36.5-9.5 52.1-16c16.3-6.8 31.5-15.2 43.9-25.5l0 35.4c0 10.5-5 21-14.9 30.9c-16.3 16.3-45 29.7-81.3 38.4c.1-1.7 .2-3.5 .2-5.3zM192 448c56.2 0 108.6-9.4 148.1-25.9c16.3-6.8 31.5-15.2 43.9-25.5l0 35.4c0 44.2-86 80-192 80S0 476.2 0 432l0-35.4c12.5 10.3 27.6 18.7 43.9 25.5C83.4 438.6 135.8 448 192 448z"/></svg>''',
                      color: Colors.white, // Apply color here
                      width: 24,
                      height: 24,
                    ),
                    title: Text(
                      'Finance Chart',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: SvgPicture.string(
                      '''<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 512"><!--!Font Awesome Free 6.7.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2025 Fonticons, Inc.--><path d="M535 41c-9.4-9.4-9.4-24.6 0-33.9s24.6-9.4 33.9 0l64 64c4.5 4.5 7 10.6 7 17s-2.5 12.5-7 17l-64 64c-9.4 9.4-24.6 9.4-33.9 0s-9.4-24.6 0-33.9l23-23L384 112c-13.3 0-24-10.7-24-24s10.7-24 24-24l174.1 0L535 41zM105 377l-23 23L256 400c13.3 0 24 10.7 24 24s-10.7 24-24 24L81.9 448l23 23c9.4 9.4 9.4 24.6 0 33.9s-24.6 9.4-33.9 0L7 441c-4.5-4.5-7-10.6-7-17s2.5-12.5 7-17l64-64c9.4-9.4 24.6-9.4 33.9 0s9.4 24.6 0 33.9zM96 64l241.9 0c-3.7 7.2-5.9 15.3-5.9 24c0 28.7 23.3 52 52 52l117.4 0c-4 17 .6 35.5 13.8 48.8c20.3 20.3 53.2 20.3 73.5 0L608 169.5 608 384c0 35.3-28.7 64-64 64l-241.9 0c3.7-7.2 5.9-15.3 5.9-24c0-28.7-23.3-52-52-52l-117.4 0c4-17-.6-35.5-13.8-48.8c-20.3-20.3-53.2-20.3-73.5 0L32 342.5 32 128c0-35.3 28.7-64 64-64zm64 64l-64 0 0 64c35.3 0 64-28.7 64-64zM544 320c-35.3 0-64 28.7-64 64l64 0 0-64zM320 352a96 96 0 1 0 0-192 96 96 0 1 0 0 192z"/></svg>''',
                      color: Colors.white, // Apply color here
                      width: 24,
                      height: 24,
                    ),
                    title: Text(
                      'Recent Transactions',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(color: Colors.white),
            ListTile(
              leading: SvgPicture.string(
                '''<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><!--!Font Awesome Free 6.7.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2025 Fonticons, Inc.--><path d="M0 416c0 17.7 14.3 32 32 32l54.7 0c12.3 28.3 40.5 48 73.3 48s61-19.7 73.3-48L480 448c17.7 0 32-14.3 32-32s-14.3-32-32-32l-246.7 0c-12.3-28.3-40.5-48-73.3-48s-61 19.7-73.3 48L32 384c-17.7 0-32 14.3-32 32zm128 0a32 32 0 1 1 64 0 32 32 0 1 1 -64 0zM320 256a32 32 0 1 1 64 0 32 32 0 1 1 -64 0zm32-80c-32.8 0-61 19.7-73.3 48L32 224c-17.7 0-32 14.3-32 32s14.3 32 32 32l246.7 0c12.3 28.3 40.5 48 73.3 48s61-19.7 73.3-48l54.7 0c17.7 0 32-14.3 32-32s-14.3-32-32-32l-54.7 0c-12.3-28.3-40.5-48-73.3-48zM192 128a32 32 0 1 1 0-64 32 32 0 1 1 0 64zm73.3-64C253 35.7 224.8 16 192 16s-61 19.7-73.3 48L32 64C14.3 64 0 78.3 0 96s14.3 32 32 32l86.7 0c12.3 28.3 40.5 48 73.3 48s61-19.7 73.3-48L480 128c17.7 0 32-14.3 32-32s-14.3-32-32-32L265.3 64z"/></svg>''',
                color: Colors.white, // Apply color here
                width: 24,
                height: 24,
              ),
              title: Text(
                'Settings',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(color: Colors.white),
                ),
              ),
              onTap: () {
                // TODO: Add navigation or functionality
              },
            ),
            ListTile(
              leading: SvgPicture.string(
                '''<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><!--!Font Awesome Free 6.7.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2025 Fonticons, Inc.--><path d="M224 256A128 128 0 1 0 224 0a128 128 0 1 0 0 256zm-45.7 48C79.8 304 0 383.8 0 482.3C0 498.7 13.3 512 29.7 512l388.6 0c16.4 0 29.7-13.3 29.7-29.7C448 383.8 368.2 304 269.7 304l-91.4 0z"/></svg>''',
                color: Colors.white, // Apply color here
                width: 24,
                height: 24,
              ),
              title: Text(
                'Profile',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(color: Colors.white),
                ),
              ),
              onTap: () {
                // TODO: Add navigation or functionality
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Oops! Nothing in the dashboard yet \n\n       Login to see your credentials ',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  color: Colors
                      .black, // Changed from white for visibility on white background
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
