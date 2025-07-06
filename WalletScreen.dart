import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_1/wallet_card.dart';
import 'package:flutter_application_1/sidebar_item.dart';

class WalletScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isDesktop = constraints.maxWidth >= 900;

        return Scaffold(
          drawer: isDesktop
              ? null
              : Drawer(
                  child: SidebarContent(),
                ),
          body: Row(
            children: [
              if (isDesktop)
                Container(
                  width: 200,
                  color: const Color(0xFF0D0D2B),
                  child: SidebarContent(),
                ),

              // Main Content
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (!isDesktop)
                          IconButton(
                            icon: const Icon(Icons.menu),
                            onPressed: () {
                              Scaffold.of(context).openDrawer();
                            },
                          ),
                        const SizedBox(height: 8),
                        Text(
                          'My Wallet',
                          style: GoogleFonts.poppins(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Keep track of your financial plan',
                          style: GoogleFonts.poppins(),
                        ),
                        const SizedBox(height: 24),

                        // Greeting + Actions
                        isDesktop
                            ? Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(child: _greetingCard()),
                                  const SizedBox(width: 16),
                                  _actionButtons(),
                                ],
                              )
                            : Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _greetingCard(),
                                  const SizedBox(height: 16),
                                  _actionButtons(),
                                ],
                              ),
                        const SizedBox(height: 24),

                        // Wallet Cards Grid
                        Wrap(
                          spacing: 16,
                          runSpacing: 16,
                          children: const [
                            WalletCard(
                                title: 'Emergency Fund',
                                amount: 300,
                                goal: 1000,
                                progress: 0.3),
                            WalletCard(
                                title: 'Travel Plan',
                                amount: 10000,
                                goal: 20000,
                                progress: 0.5),
                            WalletCard(
                                title: 'Education',
                                amount: 7000,
                                goal: 10000,
                                progress: 0.7),
                            WalletCard(
                                title: 'Foods and Groceries',
                                amount: 300,
                                goal: 1000,
                                progress: 0.3),
                            WalletCard(
                                title: 'Repair Vehicle',
                                amount: 900,
                                goal: 1000,
                                progress: 0.9),
                            WalletCard(
                                title: 'Donation',
                                amount: 200,
                                goal: 1000,
                                progress: 0.2),
                          ],
                        ),
                        const SizedBox(height: 24),
                        SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: OutlinedButton.icon(
                            onPressed: () {},
                            icon: Image.network(
                                'https://cdn-icons-png.flaticon.com/128/2169/2169864.png',
                                height: 20,
                                width: 20,
                                color: Colors.black),
                            label: Text(
                              'Create New Wallet',
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _greetingCard() {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '👋 Hi Adrian!',
              style: GoogleFonts.poppins(fontSize: 20),
            ),
            const SizedBox(height: 12),
            Text(
              '\$124,543',
              style: GoogleFonts.poppins(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _actionButtons() {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        ElevatedButton.icon(
          onPressed: () {},
          icon: Image.network(
            'https://cdn-icons-png.flaticon.com/128/2907/2907795.png',
            height: 20,
            width: 20,
            color: Colors.white,
          ),
          label: Text(
            'Send a payment',
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(color: Colors.white)),
          ),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple),
        ),
        ElevatedButton.icon(
          onPressed: () {},
          icon: Image.network(
            'https://cdn-icons-png.flaticon.com/128/12771/12771773.png',
            height: 20,
            width: 20,
            color: Colors.white,
          ),
          label: Text(
            'Request a payment',
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(color: Colors.white),
            ),
          ),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple),
        ),
      ],
    );
  }
}

class SidebarContent extends StatelessWidget {
  const SidebarContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 40),
        Text(
          'Ringku',
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 40),
        SidebarItem(
            icon: Image.network(
              'https://cdn-icons-png.flaticon.com/128/482/482541.png',
              height: 20,
              width: 20,
              color: Colors.white,
            ),
            label: 'My Wallet'),
        SidebarItem(
            icon: Image.network(
              'https://cdn-icons-png.flaticon.com/128/1077/1077976.png',
              height: 20,
              width: 20,
              color: Colors.white,
            ),
            label: 'My Finance'),
        SidebarItem(
            icon: Image.network(
              'https://cdn-icons-png.flaticon.com/128/3037/3037247.png',
              height: 20,
              width: 20,
              color: Colors.white,
            ),
            label: 'My Card'),
        SidebarItem(
            icon: Image.network(
                'https://cdn-icons-png.flaticon.com/128/2152/2152656.png',
                height: 20,
                width: 20,
                color: Colors.white),
            label: 'Finance Chart'),
        SidebarItem(
            icon: Image.network(
                'https://cdn-icons-png.flaticon.com/128/5582/5582302.png',
                height: 20,
                width: 20,
                color: Colors.white),
            label: 'Recent Transactions'),
        const Spacer(),
        const Divider(color: Colors.white54),
        SidebarItem(
            icon: Image.network(
                'https://cdn-icons-png.flaticon.com/128/2040/2040504.png',
                height: 20,
                width: 20,
                color: Colors.white),
            label: 'Settings'),
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.white,
            child: Image.network(
              'https://cdn-icons-png.flaticon.com/128/1077/1077114.png',
              height: 20,
              width: 20,
            ),
          ),
          title: Text(
            'Profile',
            style: GoogleFonts.poppins(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
