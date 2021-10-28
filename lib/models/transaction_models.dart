part of 'models.dart';

class TransactionModels extends Equatable {
  final String id;
  final DestinationModel destination;
  final int amountOfTraveler;
  final String selctedSeats;
  final bool insurance;
  final bool refundable;
  final double vat;
  final int price;
  final int grandTotal;

  TransactionModels({
    required this.destination,
    this.id = '',
    this.amountOfTraveler = 0,
    this.selctedSeats = '',
    this.insurance = false,
    this.refundable = false,
    this.vat = 0,
    this.price = 0,
    this.grandTotal = 0,
  });

  factory TransactionModels.fromJson(String id, Map<String, dynamic> json) =>
      TransactionModels(
        destination: DestinationModel.fromJson(
            json['destination']['id'], json['destination']),
        id: id,
        amountOfTraveler: json['amountOfTraveler'],
        selctedSeats: json['selctedSeats'],
        insurance: json['insurance'],
        refundable: json['refundable'],
        vat: json['vat'],
        price: json['price'],
        grandTotal: json['grandTotal'],
      );

  @override
  List<Object?> get props => [
        destination,
        amountOfTraveler,
        selctedSeats,
        insurance,
        refundable,
        vat,
        price,
        grandTotal,
      ];
}
