part of 'widgets.dart';

class DestinationCard extends StatelessWidget {
  DestinationModel destination;

  DestinationCard(this.destination, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget bgCard() {
      return Container(
        width: 200,
        height: 323,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
        ),
      );
    }

    Widget cardImage() {
      return Container(
        margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        width: 180,
        height: 220,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          image: DecorationImage(
            image: NetworkImage(destination.imageUrl),
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    Widget rating() {
      return Container(
        margin: const EdgeInsets.fromLTRB(135, 10, 10, 0),
        width: 55,
        height: 30,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
          ),
        ),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(5, 0, 1, 6),
              width: 20,
              height: 20,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                  'assets/star.png',
                )),
              ),
            ),
            Text(destination.rating.toString(), style: blackFontStyle2),
          ],
        ),
      );
    }

    Widget title() {
      return Container(
          margin: const EdgeInsets.fromLTRB(20, 250, 0, 5),
          child: Text(destination.name,
              style: blackFontStyle2.copyWith(fontSize: 18)));
    }

    Widget location() {
      return Container(
          margin: const EdgeInsets.only(top: 282, left: 20),
          child: Text(destination.city, style: greyFontStyle));
    }

    return Stack(
      children: [
        bgCard(),
        cardImage(),
        rating(),
        title(),
        location(),
      ],
    );
  }
}
