import 'package:airplane/models/models.dart';
import 'package:airplane/services/services.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'destination_state.dart';

class DestinationCubit extends Cubit<DestinationState> {
  DestinationCubit() : super(DestinationInitial());

  //* kode di bawah di gunakan untuk menerapoakn fungsi fetchDestinations
  //* ketika di try cath maka ketika data di muat maka tampilkan loading
  //*mdi buat terlebih dahulu object destinations dengan List of destinatios model sama dengan
  //* menunggu destination services() 'harus ada kurungnya kalau enggga bakalan error' dan feth destination yang berasal dari destination services.dart

  void fetchDestinations() async {
    try {
      emit(DestinationLoading());

      List<DestinationModel> destinations =
          await DestinationServices().fetchDestinations();

      emit(DestinationSuccess(destinations));
    } catch (e) {
      emit(DestinationFailed(e.toString()));
    }
  }
}

//* ketika sudah selesai membuat kode di atas jangnan lupa pasang di main.dart
