part of 'services.dart';

class TransactionService {
  CollectionReference _transactionReference =
      FirebaseFirestore.instance.collection('transactions');

  Future<void> createTransaction(TransactionModels transaction) async {
    try {
      _transactionReference.add({
        'destination': transaction.destination.toJson(),
        'amountOfTraveler': transaction.amountOfTraveler,
        'selectedSeats': transaction.selctedSeats,
        'insurance': transaction.insurance,
        'refundable': transaction.refundable,
        'vat': transaction.vat,
        'price': transaction.price,
        'grandTotal': transaction.grandTotal,
      });
    } catch (e) {
      throw e;
    }
  }

  Future<List<TransactionModels>> fetchTransactions() async {
    try {
      QuerySnapshot result = await _transactionReference.get();

      print('ini result ${result}');

      List<TransactionModels> transactions = result.docs.map(
        (e) {
          return TransactionModels.fromJson(
              e.id, e.data() as Map<String, dynamic>);
        },
      ).toList();

      print('Ini transaksi : ${transactions}');
      return transactions;
    } catch (e) {
      throw e;
    }
  }
}
