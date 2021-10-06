part of 'widgets.dart';

class CustomBottomTabbar extends StatelessWidget {
  final int selectedIndex;
  final Function(int index) onTap;

  const CustomBottomTabbar(
      {Key? key, this.selectedIndex = 0, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              if (onTap != null) {
                onTap(0);
              }
            },
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 17),
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage(
                        'assets/globe' +
                            ((selectedIndex == 0) ? '1.png' : '.png'),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 30,
                  height: 2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: (selectedIndex == 0)
                          ? mainColor
                          : Colors.transparent),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              if (onTap != null) {
                onTap(1);
              }
            },
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 17),
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage(
                        'assets/book' +
                            ((selectedIndex == 1) ? '1.png' : '.png'),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 30,
                  height: 2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: (selectedIndex == 1)
                          ? mainColor
                          : Colors.transparent),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              if (onTap != null) {
                onTap(2);
              }
            },
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 17),
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage(
                        'assets/ccard' +
                            ((selectedIndex == 2) ? '1.png' : '.png'),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 30,
                  height: 2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: (selectedIndex == 2)
                          ? mainColor
                          : Colors.transparent),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              if (onTap != null) {
                onTap(3);
              }
            },
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 17),
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage(
                        'assets/settings' +
                            ((selectedIndex == 3) ? '1.png' : '.png'),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 30,
                  height: 2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: (selectedIndex == 3)
                          ? mainColor
                          : Colors.transparent),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
