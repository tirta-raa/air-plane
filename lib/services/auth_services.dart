part of 'services.dart';

class AuthService {
  //* di buat object _auth dari firebase auth
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //* di buat method future yang akan mengembalikan user model
  //* di buat fungsi signup dengan parameter yang di butuhkan
  Future<UserModel> singUp(
      {required String email,
      required String password,
      required String name,
      String hobby = ''}) async {
    try {
      //*akan melakukan create user (pengguna baru) createUserWithEmailAndPassword itu udah bawaand dari firebase
      //* pada proses ini baru masuk firestore auth belum masuk firestore
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);

      UserModel user = UserModel(
          id: userCredential.user!.uid,
          email: email,
          name: name,
          hobby: hobby,
          balance: 280000);

      //* untuk menyimpan data di atas maka sebelum lanjut ke kodingan selanjutnya di buat terlebih dahulu
      //* user services yang akan menyimpan data ke firestore
      //* jika set user sudah selesai maka akan mereturn user

      await UserService().setUser(user);

      return user;
    } catch (e) {
      throw e;
    }
  }

  //* artinya mirip dengan singup hanya beda di penggunaan fungsi signinwithemailandpassword
  Future<UserModel> signIn({
    required String email,
    required String password,
  }) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      UserModel user =
          await UserService().getUserById(userCredential.user!.uid);
      return user;
    } catch (e) {
      throw e;
    }
  }

  //* di buat future yang tidak mengembalikan apapun karena kondisinya akan logout
  //* di buat fungsi signOut kemudian tunggu var _auth hingga singout kalau error lempar ke e

  Future<void> signOut() async {
    try {
      await _auth.signOut();
    } catch (e) {
      throw e;
    }
  }
}
