part of 'models.dart';

class UserModel extends Equatable {
  final String id;
  final String email;
  final String name;
  final String hobby;
  final int balance;

  UserModel(
      {required this.id,
      required this.email,
      required this.name,
      this.hobby = '',
      this.balance = 280000});

  @override
  List<Object?> get props => [id, email, name, hobby, balance];
}
