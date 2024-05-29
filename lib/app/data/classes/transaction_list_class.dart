class TransactionListClass {
  final DateTime dateTime;

  /// Name of transaction
  final String name;
  final String amount;
  final String type;
  final String colorType;

  TransactionListClass({
    required this.dateTime,
    required this.name,
    required this.amount,
    required this.type,
    required this.colorType,
  });
}
