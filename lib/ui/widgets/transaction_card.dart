part of 'widgets.dart';

class TransactionCard extends StatelessWidget {
  TransactionModels transaction;

  TransactionCard(this.transaction, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget imageDestination() {
      return Container(
        margin: const EdgeInsets.only(right: 16),
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(transaction.destination.imageUrl),
          ),
        ),
      );
    }

    Widget nameDestination() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(transaction.destination.name,
              style: blackFontStyle2.copyWith(fontSize: 18)),
          SizedBox(height: 5),
          Text(
            transaction.destination.city,
            style: greyFontStyle,
          ),
        ],
      );
    }

    Widget ratingDestination() {
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
          Text(transaction.destination.rating.toString(),
              style: blackFontStyle2),
        ],
      );
    }

    Widget bookingDetailsText() {
      return Container(
        margin: const EdgeInsets.only(top: 20),
        child: Text(
          'Booking Details',
          style: blackFontStyle1.copyWith(fontSize: 16),
        ),
      );
    }

    Widget travel() {
      return Container(
        margin: const EdgeInsets.only(top: 10),
        child: Row(
          children: [
            Image.asset(
              'assets/check.png',
              width: 17,
              height: 17,
            ),
            const SizedBox(width: 8),
            Text(
              'Travel',
              style: blackFontStyle2.copyWith(fontSize: 14),
            ),
            const Spacer(),
            Text(
              '${transaction.amountOfTraveler} Person',
              style: blackFontStyle1,
            ),
          ],
        ),
      );
    }

    Widget seat() {
      return Container(
        margin: const EdgeInsets.only(top: 16),
        child: Row(
          children: [
            Image.asset(
              'assets/check.png',
              width: 17,
              height: 17,
            ),
            const SizedBox(width: 8),
            Text(
              'Seat',
              style: blackFontStyle2.copyWith(fontSize: 14),
            ),
            const Spacer(),
            Text(
              transaction.selctedSeats,
              style: blackFontStyle1,
            ),
          ],
        ),
      );
    }

    Widget isurance() {
      return Container(
        margin: const EdgeInsets.only(top: 16),
        child: Row(
          children: [
            Image.asset(
              'assets/check.png',
              width: 17,
              height: 17,
            ),
            const SizedBox(width: 8),
            Text(
              'Isurance',
              style: blackFontStyle2.copyWith(fontSize: 14),
            ),
            const Spacer(),
            Text(
              transaction.insurance ? 'YES' : 'NO',
              style: blackFontStyle1.copyWith(
                color: transaction.insurance ? greenColor : redColor,
              ),
            ),
          ],
        ),
      );
    }

    Widget refunable() {
      return Container(
        margin: const EdgeInsets.only(top: 16),
        child: Row(
          children: [
            Image.asset(
              'assets/check.png',
              width: 17,
              height: 17,
            ),
            const SizedBox(width: 8),
            Text(
              'Refundable',
              style: blackFontStyle2.copyWith(fontSize: 14),
            ),
            const Spacer(),
            Text(
              transaction.refundable ? 'YES' : 'NO',
              style: blackFontStyle1.copyWith(
                color: transaction.refundable ? greenColor : redColor,
              ),
            ),
          ],
        ),
      );
    }

    Widget vat() {
      return Container(
        margin: const EdgeInsets.only(top: 16),
        child: Row(
          children: [
            Image.asset(
              'assets/check.png',
              width: 17,
              height: 17,
            ),
            const SizedBox(width: 8),
            Text(
              'VAT',
              style: blackFontStyle2.copyWith(fontSize: 14),
            ),
            const Spacer(),
            Text(
              '${(transaction.vat * 100).toStringAsFixed(0)}%',
              style: blackFontStyle1,
            ),
          ],
        ),
      );
    }

    Widget price() {
      return Container(
        margin: const EdgeInsets.only(top: 16),
        child: Row(
          children: [
            Image.asset(
              'assets/check.png',
              width: 17,
              height: 17,
            ),
            const SizedBox(width: 8),
            Text(
              'Price',
              style: blackFontStyle2.copyWith(fontSize: 14),
            ),
            const Spacer(),
            Text(
              NumberFormat.currency(locale: 'id', symbol: 'IDR ').format(
                transaction.price,
              ),
              style: blackFontStyle1,
            ),
          ],
        ),
      );
    }

    Widget grandTotal() {
      return Container(
        margin: const EdgeInsets.only(top: 16),
        child: Row(
          children: [
            Image.asset(
              'assets/check.png',
              width: 17,
              height: 17,
            ),
            const SizedBox(width: 8),
            Text(
              'Grand Total',
              style: blackFontStyle2.copyWith(fontSize: 14),
            ),
            const Spacer(),
            Text(
              NumberFormat.currency(locale: 'id', symbol: 'IDR ').format(
                transaction.grandTotal,
              ),
              style: blackFontStyle1.copyWith(color: mainColor),
            ),
          ],
        ),
      );
    }

    return Container(
      margin: const EdgeInsets.only(top: 30),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              imageDestination(),
              nameDestination(),
              const Spacer(),
              ratingDestination(),
            ],
          ),
          bookingDetailsText(),
          travel(),
          seat(),
          isurance(),
          refunable(),
          vat(),
          price(),
          grandTotal(),
        ],
      ),
    );
  }
}
