part of 'pages.dart';

class CheckoutPage extends StatelessWidget {
  final TransactionModels transaction;

  const CheckoutPage(this.transaction, {Key? key}) : super(key: key);

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

    //*footer
    Widget paymentDetailCard() {
      return BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          if (state is AuthSuccess) {
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
                              NumberFormat.currency(
                                locale: 'id',
                                symbol: 'IDR ',
                              ).format(
                                state.user.balance,
                              ),
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
          return const SizedBox();
        },
      );
    }

    Widget buttonPayNow() {
      return BlocConsumer<TransactionCubit, TransactionState>(
        listener: (context, state) {
          if (state is TransactionSuccess) {
            Get.offAll(SuccessCheckout());
          } else if (state is TransactionFailed) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: redColor,
                content: Text(state.error),
              ),
            );
          }
        },
        builder: (context, state) {
          if (state is TransactionLoading) {
            return Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 30),
              child: CircularProgressIndicator(),
            );
          }

          return CustomButton(
            margin: const EdgeInsets.symmetric(
                vertical: 44, horizontal: defaultMargin),
            title: 'Pay Now',
            onPressed: () {
              context.read<TransactionCubit>().createTransaction(transaction);
            },
          );
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
