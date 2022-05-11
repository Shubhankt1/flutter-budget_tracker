import 'package:budget_tracker/models/transaction_item.dart';

List<TransactionItem> _transacItems = [
  TransactionItem(itemTitle: "Apple Watch SE", amount: 10),
  TransactionItem(itemTitle: "Apple MacBook Pro", amount: 1600),
  TransactionItem(itemTitle: "Apple iPhone 11", amount: 800),
];

List<TransactionItem> getItems() {
  return _transacItems;
}
