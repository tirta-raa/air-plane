part of 'shared.dart';

Color mainColor = Color(0xFF5C40CC);
Color bgColor = Color(0xFFFAFAFA);
Color blackColor = Color(0xFF1F1449);
Color greyColor = Color(0xFF9698A9);
Color greenColor = Color(0xFF0EC3AE);
Color redColor = Color(0xFFEB70A5);
Color blueColor = Color(0xFF5445E5);
Color purpleColor = Color(0xFF998EFD);
Color availableColor = Color(0xffE0D9FF);
Color unavailableColor = Color(0xffEBECF1);

TextStyle blackFontStyle1 = GoogleFonts.poppins()
    .copyWith(color: blackColor, fontWeight: FontWeight.w600);

TextStyle blackFontStyle2 = GoogleFonts.poppins()
    .copyWith(color: blackColor, fontWeight: FontWeight.w400);

TextStyle greyFontStyle = GoogleFonts.poppins()
    .copyWith(color: greyColor, fontWeight: FontWeight.w300);

TextStyle whiteFontStyle = GoogleFonts.poppins().copyWith(color: Colors.white);

const double defaultMargin = 24;

String testImageUrl =
    'https://images.unsplash.com/photo-1632138858662-92a2632637d4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80';
