part of 'widgets.dart';

class SeatItem extends StatelessWidget {
  // final int status;
  final String id;
  final bool isAvailable;

  const SeatItem({
    Key? key,
    this.isAvailable = true,
    // required this.status,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isSelected = context.watch<SeatCubit>().isSelected(id);

    backgroundColor() {
      if (!isAvailable) {
        return unavailableColor;
      } else {
        if (isSelected) {
          return mainColor;
        } else {
          return availableColor;
        }
      }
    }

    // backgroundColor() {
    //   switch (status) {
    //     case 0:
    //       return availableColor;
    //     case 1:
    //       return mainColor;
    //     case 2:
    //       return unavailableColor;
    //     default:
    //       return unavailableColor;
    //   }
    // }

    borderColor() {
      if (!isAvailable) {
        return unavailableColor;
      } else {
        return mainColor;
      }
    }

    // borderColor() {
    //   switch (status) {
    //     case 0:
    //       return availableColor;
    //     case 1:
    //       return mainColor;
    //     case 2:
    //       return unavailableColor;
    //     default:
    //       return unavailableColor;
    //   }
    // }

    Widget child() {
      if (isSelected) {
        return Center(
          child: Text(
            'YOU',
            style: blackFontStyle1.copyWith(color: Colors.white),
          ),
        );
      } else {
        return SizedBox();
      }
    }

    // Widget child() {
    //   switch (status) {
    //     case 0:
    //       return SizedBox();
    //     case 1:
    //       return Center(
    //         child: Text(
    //           'YOU',
    //           style: blackFontStyle1.copyWith(color: Colors.white),
    //         ),
    //       );
    //     case 2:
    //       return SizedBox();
    //     default:
    //       return SizedBox();
    //   }
    // }

    return GestureDetector(
      onTap: () {
        if (isAvailable) {
          context.read<SeatCubit>().selectSeat(id);
        }
      },
      child: Container(
        margin: EdgeInsets.only(top: 16),
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: backgroundColor(),
          border: Border.all(color: borderColor(), width: 2),
        ),
        child: child(),
      ),
    );
  }
}
