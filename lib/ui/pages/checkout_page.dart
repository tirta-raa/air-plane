part of 'pages.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //*header
    Widget planImage() {
      return Container(
        margin: const EdgeInsets.only(bottom: 10),
        width: double.infinity,
        height: 65,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/to.png'),
          ),
        ),
      );
    }

    Widget locationName() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('CGK', style: blackFontStyle1.copyWith(fontSize: 24)),
              Text('Ciliwung', style: greyFontStyle),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('TLC', style: blackFontStyle1.copyWith(fontSize: 24)),
              Text('Tanggerang', style: greyFontStyle),
            ],
          ),
        ],
      );
    }

    //*body
    Widget detailCard() {
      //
      Widget imageDestination() {
        return Container(
          margin: const EdgeInsets.only(right: 16),
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            image: DecorationImage(
                fit: BoxFit.cover, image: NetworkImage(testImageUrl)),
          ),
        );
      }

      Widget nameDestination() {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Lake Ciliwung',
                style: blackFontStyle2.copyWith(fontSize: 18)),
            SizedBox(height: 5),
            Text('Tanggerang', style: greyFontStyle),
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
            Text('4.0', style: blackFontStyle2),
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
                '2 Person',
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
                'A3, B3',
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
                'YES',
                style: blackFontStyle1.copyWith(color: greenColor),
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
                'No',
                style: blackFontStyle1.copyWith(color: redColor),
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
                '45%',
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
                'IDR 8.500.690',
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
                'IDR 12.000.000',
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

    //*footer
    Widget paymentDetailCard() {
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
            //
            //*payment detail
            Text(
              'Payment Details',
              style: blackFontStyle1.copyWith(fontSize: 16),
            ),

            Row(
              children: [
                //
                //* image Wallet
                Container(
                  margin: const EdgeInsets.only(right: 16, top: 16),
                  width: 100,
                  height: 70,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/wallet.png'),
                    ),
                  ),
                ),

                //* balance
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'IDR 80.400.000',
                        style: blackFontStyle2.copyWith(fontSize: 18),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text('Current Balance', style: greyFontStyle),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget buttonPayNow() {
      return CustomButton(
        margin:
            const EdgeInsets.symmetric(vertical: 44, horizontal: defaultMargin),
        title: 'Pay Now',
        onPressed: () {
          Get.to(SuccessCheckout());
        },
      );
    }

    Widget buttonTAC() {
      return Center(
        child: Container(
          margin: EdgeInsets.only(bottom: 50),
          child: TextButton(
            onPressed: () {},
            child: Text(
              'Terms and Conditions',
              style:
                  greyFontStyle.copyWith(decoration: TextDecoration.underline),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(
                  defaultMargin, 50, defaultMargin, 0),
              child: Column(
                children: [
                  planImage(),
                  locationName(),
                  detailCard(),
                  paymentDetailCard(),
                  buttonPayNow(),
                  buttonTAC(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
