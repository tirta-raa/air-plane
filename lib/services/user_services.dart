part of 'services.dart';

class UserService {
//* di buat collection dengan nama _userRefereance
//* kemudian di tambakn dulu users

  CollectionReference _userReferance =
      FirebaseFirestore.instance.collection('users');

//* di buat method dengan set dengna nama seUser dengan parameter UserModel
//* kemudian masukan _userReferance.doc(user.id) di set dengan datanya
//* jikan sudah selesai kembali ke auth services
  Future<void> setUser(UserModel user) async {
    try {
      //* sesuaikan dengan di UserModels
      _userReferance.doc(user.id).set({
        'email': user.email,
        'name': user.name,
        'hobby': user.hobby,
        'balance': user.balance,
      });
    } catch (e) {
      throw e;
    }
  }

  //* membuat tampilan menjadi dinamis (seperti namanya mengikuti nama user)
  //* setelah selesai membuat code di bawah ke auth cubit untuk memanggil fungsi getUserById
  Future<UserModel> getUserById(String id) async {
    try {
      DocumentSnapshot snapshot = await _userReferance.doc(id).get();
      return UserModel(
        id: id,
        email: snapshot['email'],
        name: snapshot['name'],
        hobby: snapshot['hobby'],
        balance: snapshot['balance'],
      );
    } catch (e) {
      throw e;
    }
  }
}
