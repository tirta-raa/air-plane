import 'package:bloc/bloc.dart';

//* di hapus seat state kemudian di ganti menjadi cubit of list of string dan supernya di sisi menjadi lis kosong
//* di buat method yang ketika di klik akan menambahkan seatnya

class SeatCubit extends Cubit<List<String>> {
  SeatCubit() : super([]);

  void selectSeat(String id) {
    //
    //* fungsi print untuk liat di terminal apakah kodenya berfungsi atau tidak
    // print('prev state: $state');

    if (!isSelected(id)) {
      state.add(id);
    } else {
      state.remove(id);
    }
    // print('new state: $state');
    //* untuk membuat extend yang baru maka di gunakan perintah List.from(state) kalau emit cuma stte doang maka ketika di klik ga ada perubahan harus di restart
    emit(List.from(state));
  }

//* fungsi -1 itu artinya belum di klik kalau bukan -1 artinya udah ada di list. untuk mengetahuinya pake perintah print di atas
  bool isSelected(String id) {
    int index = state.indexOf(id);
    // print('index: $index');
    if (index == -1) {
      return false;
    } else {
      return true;
    }
  }
}
