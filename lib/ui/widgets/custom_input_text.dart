part of 'widgets.dart';

class CustomInputText extends StatelessWidget {
  final String title;
  final String hintText;
  final bool obsecureText;
  final TextEditingController controller;

  const CustomInputText(
      {Key? key,
      required this.title,
      required this.hintText,
      this.obsecureText = false,
      required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 20, top: 30, bottom: 6),
          child: Text(title, style: blackFontStyle2),
        ),

        //* input text

        Container(
          width: 287,
          height: 55,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: TextFormField(
            controller: controller,
            obscureText: obsecureText,
            decoration: InputDecoration(
              hintText: hintText,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(17),
                borderSide: BorderSide(
                  color: Color(0xffDBD7EC),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(17),
                borderSide: BorderSide(color: mainColor),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
