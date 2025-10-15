import 'package:flutter/material.dart';
import '../widgets/balance_card.dart';
import '../widgets/action_button.dart';
import '../widgets/transaction_tile.dart';
import '../models/transaction_model.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<TransactionModel> transactions = [
      TransactionModel(
        icon: Icons.attach_money,
        title: 'Saving',
        amount: 1000.20,
        date: 'Today',
      ),
      TransactionModel(
        icon: Icons.receipt_long,
        title: 'Loan',
        amount: 1500.00,
        date: 'Yesterday',
      ),
      TransactionModel(
        icon: Icons.interests,
        title: 'Interest',
        amount: 50.00,
        date: '12 Oct',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: CircleAvatar(
              backgroundColor: Colors.indigo.shade100,
              backgroundImage: const NetworkImage(
                'https://imgs.search.brave.com/6yu1ZOTJGnbOFohhQTrUtQhnvgnT20tCmbsZztpV9ms/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTgy/OTI2MTAwL3Bob3Rv/L2Nsb3NlLXVwLW1l/dGFsbGljLW51bWJl/cnMtb24tYS1jaGlw/LWNhcmQuanBnP3M9/NjEyeDYxMiZ3PTAm/az0yMCZjPTRkTUs3/Vm9fVlo1OVVneGVO/Q0tTcVp2anJqdGF2/V1Q5STNrdm9Cd0Rf/c009',
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BalanceCard(balance: 15680.75),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                ActionButton(icon: Icons.send, label: 'Send'),
                ActionButton(icon: Icons.qr_code_scanner, label: 'Scan'),
                ActionButton(
                  icon: Icons.account_balance_wallet,
                  label: 'Top Up',
                ),
                ActionButton(icon: Icons.receipt, label: 'Bills'),
              ],
            ),
            const SizedBox(height: 32),
            const Text(
              'Recent Transactions',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 12),
            for (var tx in transactions) TransactionTile(tx: tx),
          ],
        ),
      ),
    );
  }
}
