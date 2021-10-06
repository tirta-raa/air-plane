part of 'widgets.dart';

class NewDestination extends StatelessWidget {
  DestinationModel newdestination;

  NewDestination(this.newdestination, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget card() {
      Widget imageCard() {
        return Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            image: DecorationImage(
                image: NetworkImage(newdestination.imageUrl),
                fit: BoxFit.cover),
          ),
        );
      }

      Widget destination() {
        return Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                newdestination.name,
                style: blackFontStyle2.copyWith(fontSize: 18),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                newdestination.city,
                style: greyFontStyle,
              ),
            ],
          ),
        );
      }

      Widget rating() {
        return Row(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 1, 6),
              width: 20,
              height: 20,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/star.png',
                  ),
                ),
              ),
            ),
            Text(newdestination.rating.toString(), style: blackFontStyle2),
          ],
        );
      }

      //* BackGround
      return Container(
        margin: EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 0),
        padding: EdgeInsets.only(left: 10, right: 16),
        width: double.infinity,
        height: 90,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            imageCard(),
            destination(),
            rating(),
          ],
        ),
      );
    }

    return card();
  }
}
