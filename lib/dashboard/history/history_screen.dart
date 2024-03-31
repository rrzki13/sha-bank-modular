import "package:bank_sha_modular/import_all.dart";

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor("#F6F8FB"),
      appBar: AppBar(
        backgroundColor: AppColor(AppColor.colorWhite),
        title: Text("History", style: AppStyle.darkText.copyWith(fontSize: 20, fontWeight: FontWeight.w600)),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 13),
            child: SizedBox(width: 24, height: 24, child: SvgPicture.asset("assets/icons/ic-sliders.svg")),
          )
        ],
      ),
      body: ListView(
        children: [
          const SizedBox(height: 30),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text("Today", style: AppStyle.darkText.copyWith(fontSize: 16, fontWeight: FontWeight.w600))
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(22),
            margin: const EdgeInsets.only(top: 15, left: 24, right: 24),
            decoration: BoxDecoration(
                color: AppColor(AppColor.colorWhite),
                borderRadius: BorderRadius.circular(20)
            ),
            child: Column(
              children: [
                buildTransactionItem(
                  icon: "assets/icons/ic-download.svg",
                  color: AppColor("#3197DD"),
                  accentColor: AppColor("#E7F5FD"),
                  label: "Top Up",
                  time: "Yesterday",
                  ledger: "+ 450.000",
                ),
                const SizedBox(height: 18),
                buildTransactionItem(
                  icon: "assets/icons/ic-reward.svg",
                  color: AppColor("#A02FBD"),
                  accentColor: AppColor("#F5E8F9"),
                  label: "Cashback",
                  time: "Sep 11",
                  ledger: "+ 22.000",
                ),
                const SizedBox(height: 18),
                buildTransactionItem(
                  icon: "assets/icons/ic-upload.svg",
                  color: AppColor("#2EA368"),
                  accentColor: AppColor("#E5F7EE"),
                  label: "Withdraw",
                  time: "Sep 02",
                  ledger: "- 5.000",
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text("Tue 12 Dec", style: AppStyle.darkText.copyWith(fontSize: 16, fontWeight: FontWeight.w600))
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(22),
            margin: const EdgeInsets.only(top: 15, left: 24, right: 24),
            decoration: BoxDecoration(
                color: AppColor(AppColor.colorWhite),
                borderRadius: BorderRadius.circular(20)
            ),
            child: Column(
              children: [
                buildTransactionItem(
                  icon: "assets/icons/ic-repeat.svg",
                  color: AppColor("#5142E6"),
                  accentColor: AppColor("#EDEBFF"),
                  label: "Transfer",
                  time: "Aug 28",
                  ledger: "- 150.000",
                ),
                const SizedBox(height: 18),
                buildTransactionItem(
                  icon: "assets/icons/ic-shopping-cart.svg",
                  color: AppColor("#F87000"),
                  accentColor: AppColor("#FEF0DF"),
                  label: "Electric",
                  time: "Feb 28",
                  ledger: "- 12.150.000",
                ),
                const SizedBox(height: 18),
                buildTransactionItem(
                  icon: "assets/icons/ic-coffee.svg",
                  color: AppColor("#F80077"),
                  accentColor: AppColor("#FFE0EF"),
                  label: "Food",
                  time: "Feb 28",
                  ledger: "- 12.150.000",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTransactionItem({
    required String icon,
    required Color color,
    required Color accentColor,
    required String label,
    required String time,
    required String ledger
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Wrap(
          spacing: 16,
          alignment: WrapAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              decoration: ShapeDecoration(
                  shape: const CircleBorder(),
                  color: accentColor
              ),
              child: Center(
                child: SvgPicture.asset(
                    icon,
                    width: 18,
                    height: 18,
                    colorFilter: ColorFilter.mode(color, BlendMode.srcIn)
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(label, style: AppStyle.darkText.copyWith(fontSize: 16, fontWeight: FontWeight.w600)),
                Text(time, style: AppStyle.greyText),
              ],
            )
          ],
        ),
        Text(ledger, style: AppStyle.darkText.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w600
        ))
      ],
    );
  }
}