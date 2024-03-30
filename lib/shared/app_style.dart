import 'package:bank_sha_modular/import_all.dart';

class AppStyle {
  static TextStyle mainFont = GoogleFonts.poppins();

  static TextStyle primaryText = mainFont.copyWith(
    color: AppColor(AppColor.colorPrimary),
    fontSize: 12,
  );

  static TextStyle primaryDarkText = mainFont.copyWith(
    color: AppColor(AppColor.colorPrimaryDark),
    fontSize: 12,
  );

  static TextStyle primaryAccentText = mainFont.copyWith(
    color: AppColor(AppColor.colorPrimaryAccent),
    fontSize: 12,
  );

  static TextStyle darkText = mainFont.copyWith(
    color: AppColor(AppColor.colorDark),
    fontSize: 12,
  );

  static TextStyle greyText = mainFont.copyWith(
    color: AppColor(AppColor.colorGrey),
    fontSize: 12,
  );

  static TextStyle whiteText = mainFont.copyWith(
    color: AppColor(AppColor.colorWhite),
    fontSize: 12,
  );

  static TextStyle primaryAccentStyle = mainFont.copyWith(
    color: AppColor(AppColor.colorPrimaryAccent),
    fontSize: 12,
  );

  static TextStyle normalStyle =
      mainFont.copyWith(color: AppColor("696B76"), fontSize: 12);

  static TextStyle cardTextStyle = mainFont.copyWith(
      color: AppColor(AppColor.colorWhite),
      fontSize: 18,
      fontWeight: FontWeight.w600,
  );

  static TextStyle greenTextStyle = mainFont.copyWith(
    color: AppColor(AppColor.colorGreen),
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );
}
