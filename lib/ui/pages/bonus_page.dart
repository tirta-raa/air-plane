part of 'pages.dart';

class BonusSaldoPage extends StatelessWidget {
  const BonusSaldoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //*sebelum menggunakan bloc

    // Widget name() {
    //   return Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       Text(
    //         'Name',
    //         style: whiteFontStyle.copyWith(
    //           fontWeight: FontWeight.w300,
    //         ),
    //       ),
    //       Text(
    //         'Kezia Anne',
    //         style: whiteFontStyle.copyWith(fontSize: 20),
    //         overflow: TextOverflow.ellipsis,
    //       ),
    //     ],
    //   );
    // }

    Widget name() {
      return BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          if (state is AuthSuccess) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name',
                  style: whiteFontStyle.copyWith(
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Text(
                  state.user.name,
                  style: whiteFontStyle.copyWith(fontSize: 20),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            );
          } else {
            return SizedBox();
          }
        },
      );
    }

    Widget logo() {
      return Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 6),
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/logo.png')),
            ),
          ),
          Text(
            'Pay',
            style: whiteFontStyle.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      );
    }

    Widget balance() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 41),
            child: Text(
              'Balance',
              style: whiteFontStyle.copyWith(
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          Text(
            'IDR 280.000.000',
            style: whiteFontStyle.copyWith(fontSize: 26),
          )
        ],
      );
    }

    Widget bigBonus() {
      return Container(
        margin: const EdgeInsets.only(top: 80, bottom: 10),
        child: Text(
          'Big Bonus',
          style: blackFontStyle1.copyWith(fontSize: 32),
        ),
      );
    }

    Widget description() {
      return Container(
        margin: const EdgeInsets.only(bottom: 50),
        child: Text(
          'We give you early credit so that\nyou can buy a flight ticket',
          style: greyFontStyle.copyWith(fontSize: 16),
          textAlign: TextAlign.center,
        ),
      );
    }

    Widget buttonFlyNow() {
      return ElevatedButton(
        onPressed: () {
          Get.offAll(MainPage());
        },
        style: ElevatedButton.styleFrom(
          primary: mainColor,
          minimumSize: Size(220, 55),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(17),
          ),
        ),
        child: Text('Star Fly Now'),
      );
    }

    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //* card

          Container(
            margin: const EdgeInsets.fromLTRB(38, 0, 38, 80),
            padding: const EdgeInsets.symmetric(
                horizontal: defaultMargin, vertical: defaultMargin),
            width: double.infinity,
            height: 211,
            decoration: BoxDecoration(
              color: blueColor,
              borderRadius: BorderRadius.circular(34),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xff3F32B2).withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 15,
                  offset: const Offset(0, 50), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    name(),
                    Spacer(),
                    logo(),
                  ],
                ),
                balance(),
              ],
            ),
          ),
          bigBonus(),
          description(),
          buttonFlyNow(),
        ],
      ),
    );
  }
}
