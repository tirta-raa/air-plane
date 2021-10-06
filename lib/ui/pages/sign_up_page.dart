part of 'pages.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);

  final TextEditingController nameController = TextEditingController(text: '');
  final TextEditingController emailController = TextEditingController(text: '');
  final TextEditingController passwordController =
      TextEditingController(text: '');
  final TextEditingController hobbyController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 20, left: defaultMargin, bottom: 30),
        child: Text(
          'Join us and get\nyour next journey',
          style: blackFontStyle1.copyWith(fontSize: 24),
        ),
      );
    }

    Widget inputArea() {
      Widget fullName() {
        return CustomInputText(
          title: 'Your Name',
          hintText: 'Input your name',
          controller: nameController,
        );
      }

      Widget emailAdress() {
        return CustomInputText(
          title: 'Email Addres',
          hintText: 'Input your addres',
          controller: emailController,
        );
      }

      Widget password() {
        return CustomInputText(
          obsecureText: true,
          title: 'Password',
          hintText: 'Input your password',
          controller: passwordController,
        );
      }

      Widget hobby() {
        return CustomInputText(
          title: 'Hobby',
          hintText: 'Input your hobby',
          controller: hobbyController,
        );
      }

//*sebelum menggunakan bloc

//  Widget button() {
//         return CustomButton(
//           margin: EdgeInsets.only(top: 20),
//           title: 'Get Started',
//           onPressed: () {
//             Get.to(MainPage());
//           },
//           width: 255,
//         );
//       }

      //* di bungkus  custom buton dengan BlocConsumer of auth cubit dan auth state
      //* di pilih auth cube dan auth state karena untuk authenfikasi
      //* if jika state AuthSukses (AuthSuccess bagian dari auth state) maka lanjutkan
      //* selain itu jika state itu auth filed(auth filed bagian dari auth state) maka
      //* tampilkan pesan error
      Widget button() {
        return BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state is AuthSuccess) {
              Get.offAll(BonusSaldoPage());
            } else if (state is AuthFailed) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: redColor,
                  content: Text(state.error),
                ),
              );
            }
          },

          //* ketika di klik maka berubah menjadi loading karena menunggu terlebih dahulu
          builder: (context, state) {
            if (state is AuthLoading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }

            //* kembalikan custom buton dan ketika di tekan akan membawa
            //* email, password, nama, dan hobi
            return CustomButton(
              margin: EdgeInsets.only(top: 20),
              title: 'Get Started',
              onPressed: () {
                context.read<AuthCubit>().signUp(
                    email: emailController.text,
                    password: passwordController.text,
                    name: nameController.text,
                    hobby: hobbyController.text);
              },
              width: 255,
            );
          },
        );
      }

      return Container(
        margin: EdgeInsets.symmetric(horizontal: defaultMargin),
        width: double.infinity,
        height: 533,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          children: [
            fullName(),
            emailAdress(),
            password(),
            hobby(),
            button(),
          ],
        ),
      );
    }

    Widget buttonTermsAndCondition() {
      return Center(
        child: Container(
          margin: EdgeInsets.only(top: 50),
          child: TextButton(
            onPressed: () {
              Get.to(SignInPage());
            },
            child: Text(
              'Alredy Have Account? login',
              style:
                  greyFontStyle.copyWith(decoration: TextDecoration.underline),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: ListView(
          children: [
            title(),
            Column(
              children: [
                inputArea(),
                buttonTermsAndCondition(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
