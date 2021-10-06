part of 'auth_cubit.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

//* auth initial untuk menginisialisasi auth cubit
class AuthInitial extends AuthState {}

//* jadi pada saat loading authenfitikasi maka akan di ganti jadi auth loding
class AuthLoading extends AuthState {}

//* auth sucsess jika berhasil melakukan authenfikasi
//* perlu properti usermodel karena ketika berhasil auth maka data akan di ambil dari user
//* jadi kalau belum punya user model di buat terlebih dahulu
class AuthSuccess extends AuthState {
  final UserModel user;

  AuthSuccess(this.user);

  @override
  List<Object> get props => [user];
}

//* auth failed jika gagal authenfikasi
//* kemudian berikan parameter error untuk menampilkan pesan error
class AuthFailed extends AuthState {
  final String error;

  AuthFailed(this.error);

  @override
  List<Object> get props => [error];
}
