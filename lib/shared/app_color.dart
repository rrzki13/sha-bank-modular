
import 'package:bank_sha_modular/import_all.dart';

class AppColor extends Color {
  static int _getColorFromHex(String appcolor) {
    int colors = 0;
    appcolor = appcolor.replaceAll("#", "");
    if (appcolor.length == 6) {
      appcolor = "FF$appcolor";
    }
    if (appcolor.length == 8) {
      colors = int.parse("0x$appcolor");
    }
    return colors;
  }
  AppColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static String colorPrimary          = "#5142E6";
  static String colorPrimaryDark      = "#14193F";
  static String colorPrimaryAccent    = "#53C1F9";
  static String colorDark             = "#020518";
  static String colorRed              = "#FF2566";
  static String colorWhite            = "#FFFFFF";
  static String colorWhiteBone        = "#F1F1F9";
  static String colorGrey             = "#A4A8AE";
  static String colorGreen            = "#22B07D";

}
