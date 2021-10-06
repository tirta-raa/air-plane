part of 'services.dart';

//* kode di bawah di gunakan untuk mengambil data dari firebase dengan nama destinations
class DestinationServices {
  CollectionReference _destinationRef =
      FirebaseFirestore.instance.collection('destinations');

  // * di bentuk future of list of destination model karena datanya berpa list

  Future<List<DestinationModel>> fetchDestinations() async {
    try {
      //* di buat type object resul dengan querysnapshon yang menunggu ambilan data di atas

      QuerySnapshot result = await _destinationRef.get();

      //*di buat onjek destinations dengan list of model sama degnan result .docs(fungsi docs itu bawan firebase)
      //*yang mengambil semua data list termasuk ini
      //* di map dengan nama item, yang kembalianya destination model fromjson dengan parameter item.id
      //* dan item.data (akan terjadi error karena item. [data()] merupakan sebuah fungsi bawaan dari firestore makan di terjemahkan menjadi)
      // * as map<Sring dynamic>
      List<DestinationModel> destinations = result.docs.map(
        (item) {
          return DestinationModel.fromJson(
              item.id, item.data() as Map<String, dynamic>);
        },
      ).toList();
      return destinations;
    } catch (e) {
      throw e;
    }
  }
}

// * setelah membuat code di atas ke destination cubit untuk melanjutkan kodingan