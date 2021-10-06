part of 'pages.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 513, bottom: 10),
        child: Text(
          'Fly Like a Bird',
          style: whiteFontStyle.copyWith(
            fontSize: 32,
            fontWeight: FontWeight.w600,
          ),
        ),
      );
    }

    Widget description() {
      return Container(
        padding: EdgeInsets.only(bottom: 50),
        child: Text(
          'Explore new world with us and let \nyourself get an amazing experiences',
          style: whiteFontStyle.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w300,
          ),
          textAlign: TextAlign.center,
        ),
      );
    }

    Widget button() {
      return CustomButton(
        title: 'Get Started',
        onPressed: () {
          Get.to(SignUpPage());
        },
        width: 220,
      );
    }

    return Container(
      //* Background
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/bg.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                title(),
                description(),
                button(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
