import 'package:flutter/material.dart';
import 'package:ifinnance/main/screens/widgets/custom_transaction_card.dart';
import 'package:ifinnance/main/screens/widgets/categories_section.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.wallet),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                CustomTransactionCard(income: true),
                CustomTransactionCard(),
              ],
            ),
            SizedBox(height: 20),
            CategoriesSection(
              shoppingSpent: 1000,
              educationSpent: 1000,
              transportSpent: 1000,
              workSpent: 1000,
              investmentsSpent: 1000,
              healthSpent: 1000,
            ),
            Expanded(
              child: ListView(),
            ),
          ],
        ),
      ),
    );
  }
}