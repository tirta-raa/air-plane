part of 'models.dart';

class DestinationModel extends Equatable {
  final String id;
  final String city;
  final String name;
  final String imageUrl;
  final int price;
  final double rating;

  const DestinationModel({
    required this.id,
    this.city = '',
    this.name = '',
    this.imageUrl = '',
    this.price = 0,
    this.rating = 0,
  });

  //* untuk String id itu harus di masukin kalau ga mau pake pasangan string dymanic json
  factory DestinationModel.fromJson(String id, Map<String, dynamic> json) =>
      DestinationModel(
        id: id,
        city: json['city'],
        name: json['name'],
        imageUrl: json['imageUrl'],
        price: json['price'],
        rating: json['rating'].toDouble(),
      );

//* membentuk model kedalam bentuk json
  Map<String, dynamic> toJson() => {
        'city': city,
        'name': name,
        'imageUrl': imageUrl,
        'price': price,
        'rating': rating,
      };

  @override
  List<Object?> get props => [id, city, name, imageUrl, price, rating];
}
