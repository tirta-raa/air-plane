import 'package:airplane/models/models.dart';
import 'package:airplane/services/services.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  void signIn({required String email, required String password}) async {
    try {
      emit(AuthLoading());
      UserModel user = await AuthService().signIn(
        email: email,
        password: password,
      );
      emit(AuthSuccess(user));
    } catch (e) {
      emit(AuthFailed(e.toString()));
    }
  }

  //* di buat method dengan fungsi signUp dengan parameter sesuai dengan UserModel

  void signUp({
    required String email,
    required String password,
    String name = '',
    String hobby = '',
  }) async {
    try {
      //* ketika mengklik buton getstarted maka di buat loading dulu jadi perlu di emit auth loading
      emit(AuthLoading());

      //* ketika sudah loading di buat objek UserModel dengan nama user yang menungu dari authservices dengan fungsi signup
      //* dengan paramerter sesuai dengna UserModel
      UserModel user = await AuthService()
          .singUp(email: email, password: password, name: name, hobby: hobby);

      //* kalau berhasil makan emit authsuscces
      emit(AuthSuccess(user));
    } catch (e) {
      //* kalau ggal munculkan ini
      emit(AuthFailed(e.toString()));
    }
  }

  //* code di bawah di gunakan untuk sign out
  //* sebelum membuat kode di bawah di buat dulu fungsi signout di auth services
  void signOut() async {
    try {
      emit(AuthLoading());
      await AuthService().signOut();
      emit(AuthInitial());
    } catch (e) {
      emit(AuthFailed(e.toString()));
    }
  }

  //* kode di bawah digunakan untuk membuat data menjadi dinamis
  //* sebelum mebuat kode di bawah buat dulu fungsi getUserById di user services
  void getCurrenUser(String id) async {
    try {
      UserModel user = await UserService().getUserById(id);
      emit(AuthSuccess(user));
    } catch (e) {
      emit(AuthFailed(e.toString()));
    }
  }
}

//* kemudian ke main page untuk membuat multiblocprovider
//* kemudian pergi ke signUp page
//  @override
//   Widget build(BuildContext context) {
//     return MultiBlocProvider(
//       providers: [
//         BlocProvider(create: (context) => AuthCubit()),
//       ],
//       child: GetMaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: SplashScreen(),
//       ),
//     );
//   }
// }
