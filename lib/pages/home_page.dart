import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'package:budget_tracker/widgets/transact_card.dart';
import 'package:budget_tracker/models/transaction_item.dart';
import 'package:budget_tracker/example/transaction_items.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Transaction Items
  List<TransactionItem> items = getItems();
  @override
  Widget build(BuildContext context) {
    // Screen size
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            items.add(
              TransactionItem(
                itemTitle: "Apple AirPods Pro",
                amount: 160,
              ),
            );
          });
        },
        child: const Icon(
          Icons.add_shopping_cart_rounded,
          size: 30,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: SizedBox(
            width: screenSize.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: CircularPercentIndicator(
                    percent: 0.5,
                    radius: screenSize.width / 2.5,
                    backgroundColor: Colors.white,
                    progressColor: Theme.of(context).colorScheme.primary,
                    center: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text(
                          "\$0",
                          style: TextStyle(
                            fontSize: 48,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Balance",
                          style: TextStyle(
                            fontSize: 48,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 35),
                const Text(
                  "Items",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                ...List.generate(
                  items.length,
                  (index) => TransactionCard(transactionItem: items[index]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
