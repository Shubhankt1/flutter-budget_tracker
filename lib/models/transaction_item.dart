class TransactionItem {
  final String itemTitle;
  final double amount;
  final bool isExpense;

  TransactionItem({
    required this.itemTitle,
    required this.amount,
    this.isExpense = true,
  });
}
