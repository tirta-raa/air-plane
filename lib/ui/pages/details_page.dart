part of 'pages.dart';

class DetailsPage extends StatelessWidget {
  final DestinationModel destination;

  const DetailsPage(this.destination, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget bgImage() {
      return Container(
        width: double.infinity,
        height: 450,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(destination.imageUrl),
          ),
        ),
      );
    }

    Widget contain() {
      Widget header() {
        Widget nameAndLocation() {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                destination.name,
                style: blackFontStyle1.copyWith(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
              Text(
                destination.city,
                style: greyFontStyle.copyWith(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ],
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
              Text(
                destination.rating.toString(),
                style: blackFontStyle2.copyWith(color: Colors.white),
              ),
            ],
          );
        }

        return Container(
          margin: EdgeInsets.fromLTRB(defaultMargin, 315, defaultMargin, 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              nameAndLocation(),
              rating(),
            ],
          ),
        );
      }

      Widget body() {
        Widget description() {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'About',
                style: blackFontStyle1.copyWith(fontSize: 16),
              ),
              const SizedBox(height: 6),
              Text(
                'Berada di jalur jalan provinsi yang menghubungkan Denpasar Singaraja serta letaknya yang dekat dengan Kebun Raya Eka Karya menjadikan tempat Bali.',
                style: blackFontStyle2.copyWith(height: 2.6),
              ),
            ],
          );
        }

        Widget detailPhotos() {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Photos',
                style: blackFontStyle1.copyWith(fontSize: 16),
              ),
              const SizedBox(height: 6),
              Row(
                children: [
                  PhotoDetails(imageUrl: testImageUrl),
                  PhotoDetails(imageUrl: testImageUrl),
                  PhotoDetails(imageUrl: testImageUrl),
                ],
              ),
            ],
          );
        }

        Widget interests() {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Interests',
                style: blackFontStyle1.copyWith(fontSize: 16),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  InterestDetails(title: 'Swimming'),
                  InterestDetails(title: 'Reading'),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  InterestDetails(title: 'Swimming'),
                  InterestDetails(title: 'Reading'),
                ],
              ),
            ],
          );
        }

        return Container(
          margin: EdgeInsets.fromLTRB(defaultMargin, 0, defaultMargin, 31),
          width: double.infinity,
          padding: EdgeInsets.fromLTRB(20, 30, 20, 30),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              description(),
              const SizedBox(height: 20),
              detailPhotos(),
              const SizedBox(height: 20),
              interests(),
            ],
          ),
        );
      }

      Widget footer() {
        Widget price() {
          return Container(
            margin: EdgeInsets.only(left: defaultMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  NumberFormat.currency(locale: 'id', symbol: 'IDR ')
                      .format(destination.price),
                  style: blackFontStyle2.copyWith(fontSize: 18),
                ),
                const SizedBox(height: 5),
                Text(
                  'per orang',
                  style: greyFontStyle,
                ),
              ],
            ),
          );
        }

        Widget button() {
          return CustomButton(
            margin: EdgeInsets.only(right: defaultMargin),
            title: 'Book Now',
            width: 170,
            onPressed: () {
              Get.to(ChooseSeatPage(destination));
            },
          );
        }

        return Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  price(),
                  button(),
                ],
              ),
            ),
          ],
        );
      }

      return SafeArea(
        bottom: false,
        child: ListView(
          children: [
            header(),
            body(),
            footer(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgColor,
      body: Stack(
        children: [
          bgImage(),
          contain(),
        ],
      ),
    );
  }
}
