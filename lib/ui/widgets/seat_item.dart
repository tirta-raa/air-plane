part of 'widgets.dart';

class SeatItem extends StatelessWidget {
  final int status;
  final String id;
  const SeatItem({Key? key, required this.status, required this.id})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    backgroundColor() {
      switch (status) {
        case 0:
          return availableColor;
        case 1:
          return mainColor;
        case 2:
          return unavailableColor;
        default:
          return unavailableColor;
      }
    }

    borderColor() {
      switch (status) {
        case 0:
          return availableColor;
        case 1:
          return mainColor;
        case 2:
          return unavailableColor;
        default:
          return unavailableColor;
      }
    }

    Widget child() {
      switch (status) {
        case 0:
          return SizedBox();
        case 1:
          return Center(
            child: Text(
              'YOU',
              style: blackFontStyle1.copyWith(color: Colors.white),
            ),
          );
        case 2:
          return SizedBox();
        default:
          return SizedBox();
      }
    }

    return Container(
      margin: EdgeInsets.only(top: 16),
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: backgroundColor(),
        border: Border.all(color: borderColor(), width: 2),
      ),
      child: child(),
    );
  }
}
