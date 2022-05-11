import 'package:budget_tracker/models/transaction_item.dart';
import 'package:flutter/material.dart';

class TransactionCard extends StatelessWidget {
  final TransactionItem transactionItem;
  const TransactionCard({
    Key? key,
    required this.transactionItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 25),
            blurRadius: 50,
          ),
        ],
        color: Theme.of(context).colorScheme.background,
      ),
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(transactionItem.itemTitle, style: const TextStyle(fontSize: 18)),
          Text(
            transactionItem.isExpense
                ? "+ ${transactionItem.amount.toString()}"
                : "- ${transactionItem.amount.toString()}",
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
