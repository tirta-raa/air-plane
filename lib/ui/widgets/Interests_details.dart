// ignore_for_file: file_names

part of 'widgets.dart';

class InterestDetails extends StatelessWidget {
  final String title;
  const InterestDetails({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 6),
            width: 16,
            height: 16,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/check.png'),
              ),
            ),
          ),
          Text(
            title,
            style: blackFontStyle2,
          ),
        ],
      ),
    );
  }
}
