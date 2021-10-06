part of 'pages.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      //
      //* ambil user model dengan nama user sama dengan firebaseatuhenfigikasi curent user
      //* jadi user yang udah login langsung ke main page ga usah login atau register lagi
      //! kalau muncul error Error: 'User' isn't a type. User? user = FirebaseAuth.instance.currentUser;
      //! periksa di page.dart kalau ada dart.ui itu harus di hapus kalau ga di pake

      User? user = FirebaseAuth.instance.currentUser;
      if (user == null) {
        Get.offAll(const OnBoardingPage());
      } else {
        //? untuk mengetahui siapa yang login
        // print(user.email);
        //* kode di bawah bisa di terapkan juga sudah membuat fungsi getCurrenUser di auth cubit
        //* arti kode di bawah membawa data dari user berdasarkan id, kalau misalkan udah pernah login
        //* maka akan di bawa data usernya
        context.read<AuthCubit>().getCurrenUser(user.uid);
        //
        Get.offAll(const MainPage());
      }
    });
    return Scaffold(
      backgroundColor: mainColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/logo.png',
              width: 100,
            ),
          ),
          SizedBox(height: 50),
          Text(
            'AIRPLANE',
            style: whiteFontStyle.copyWith(fontSize: 32, letterSpacing: 10),
          ),
        ],
      ),
    );
  }
}
