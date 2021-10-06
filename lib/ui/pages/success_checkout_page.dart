part of 'pages.dart';

class SuccessCheckout extends StatelessWidget {
  const SuccessCheckout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget image() {
      return Container(
        margin: EdgeInsets.only(bottom: 80),
        width: 300,
        height: 150,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/s.png'),
          ),
        ),
      );
    }

    Widget wellBooked() {
      return Container(
        margin: EdgeInsets.only(bottom: 10),
        child: Text(
          'Well Booked 😍',
          style: blackFontStyle1.copyWith(fontSize: 32),
        ),
      );
    }

    Widget description() {
      return Text(
        'Are you ready to explore the new\nworld of experiences?',
        style: greyFontStyle.copyWith(fontSize: 16, height: 2),
        textAlign: TextAlign.center,
      );
    }

    Widget button() {
      return CustomButton(
        title: 'My Bookings',
        margin: EdgeInsets.only(top: 50),
        width: 220,
        onPressed: () {
          Get.offAll(MainPage());
        },
      );
    }

    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            image(),
            wellBooked(),
            description(),
            button(),
          ],
        ),
      ),
    );
  }
}
