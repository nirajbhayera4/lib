import 'package:flutter/material.dart';

class WalletCard extends StatelessWidget {
  final String title;
  final double amount;
  final double goal;
  final double progress;

  const WalletCard({
    super.key,
    required this.title,
    required this.amount,
    required this.goal,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Text('\$${amount.toInt()} / \$${goal.toInt()}'),
          SizedBox(height: 8),
          LinearProgressIndicator(
            value: progress,
            color: Colors.deepPurple,
            backgroundColor: Colors.deepPurple.shade100,
          ),
        ],
      ),
    );
  }
}
