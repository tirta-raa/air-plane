part of '../pages.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedPage = 0;
  PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            bottom: false,
            child: PageView(
              controller: pageController,
              onPageChanged: (index) {
                setState(() {
                  selectedPage = index;
                });
              },
              children: [
                Center(
                  child: HomePage(),
                ),
                Center(
                  child: TransactionPage(),
                ),
                Center(
                  child: Text('3'),
                ),
                Center(
                  child: SettingsPage(),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(defaultMargin, 0, defaultMargin, 30),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: CustomBottomTabbar(
                selectedIndex: selectedPage,
                onTap: (index) {
                  setState(() {
                    selectedPage = index;
                  });
                  pageController.jumpToPage(selectedPage);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
