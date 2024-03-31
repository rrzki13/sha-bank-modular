import 'package:bank_sha_modular/import_all.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor("#F6F8FB"),
        // extendBodyBehindAppBar: true,
        // extendBody: true,
        appBar: AppBar(
          backgroundColor: AppColor("#F6F8FB"),
          title: Padding(
            padding: const EdgeInsets.only(left: 13),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Howdy", style: AppStyle.normalStyle.copyWith(fontSize: 16)),
                Text("Iki", style: AppStyle.primaryDarkText.copyWith(fontSize: 20, fontWeight: FontWeight.w700))
              ],
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 13),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: const ShapeDecoration(
                        shape: CircleBorder(),
                        image: DecorationImage(
                            image: AssetImage("assets/users/user1.png")
                        )
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: SvgPicture.asset("assets/icons/ic-check.svg", width: 14, height: 14),
                  )
                ],
              ),
            )
          ],
        ),
        body: ListView(
          children: [
            const SizedBox(height: 30),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 24),
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  image: const DecorationImage(
                      image: AssetImage("assets/images/card-background.png"),
                      fit: BoxFit.fill)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Madelina Bond", style: AppStyle.cardTextStyle),
                  const SizedBox(height: 30),
                  Wrap(
                    spacing: 23,
                    children: [
                      Text("****", style: AppStyle.cardTextStyle),
                      Text("****", style: AppStyle.cardTextStyle),
                      Text("****", style: AppStyle.cardTextStyle),
                      Text("1310", style: AppStyle.cardTextStyle),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Text("Balance",
                      style: AppStyle.whiteText.copyWith(fontSize: 14)),
                  Text("\$5,209,400",
                      style: AppStyle.whiteText
                          .copyWith(fontSize: 24, fontWeight: FontWeight.w700)),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(22),
              margin: const EdgeInsets.symmetric(horizontal: 24),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColor(AppColor.colorWhite)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Level 1",
                          style: AppStyle.darkText.copyWith(
                              fontSize: 14, fontWeight: FontWeight.w600)),
                      RichText(
                          text: TextSpan(children: [
                            TextSpan(text: "55%", style: AppStyle.greenTextStyle),
                            TextSpan(
                                text: " of \$10M",
                                style: AppStyle.darkText.copyWith(
                                    fontSize: 14, fontWeight: FontWeight.w600)),
                          ]))
                    ],
                  ),
                  const SizedBox(height: 10),
                  Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width - 92,
                        height: 3,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(55),
                            color: AppColor("#F6F6F6")),
                      ),
                      Container(
                        width: .8 * (MediaQuery.of(context).size.width - 92),
                        height: 5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(55),
                            color: AppColor(AppColor.colorGreen)),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 30),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text("Do Something", style: AppStyle.darkText.copyWith(fontSize: 16, fontWeight: FontWeight.w600))
            ),
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Wrap(
                spacing: 16,
                children: [
                  CardAction(icon: "assets/icons/ic-download.svg", label: "Top Up"),
                  CardAction(icon: "assets/icons/ic-repeat.svg", label: "Send"),
                  CardAction(icon: "assets/icons/ic-upload.svg", label: "Withdraw"),
                  CardAction(icon: "assets/icons/ic-grid.svg", label: "More"),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text("Latest Transactions", style: AppStyle.darkText.copyWith(fontSize: 16, fontWeight: FontWeight.w600))
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
                  const SizedBox(height: 18),
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
                ],
              ),
            ),
            const SizedBox(height: 30),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text("Send Again", style: AppStyle.darkText.copyWith(fontSize: 16, fontWeight: FontWeight.w600))
            ),
            const SizedBox(height: 15),
            Container(
              margin: const EdgeInsets.only(left: 24),
              child: const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Wrap(
                  spacing: 18,
                  children: [
                    CardSendAgain(
                      image: "assets/users/user3.png",
                      name: "@yuanita",
                    ),
                    CardSendAgain(
                      image: "assets/users/user1.png",
                      name: "@iki",
                    ),
                    CardSendAgain(
                      image: "assets/users/user2.png",
                      name: "@Brian",
                    ),
                    CardSendAgain(
                      image: "assets/users/user4.png",
                      name: "@kan",
                    ),
                    CardSendAgain(
                      image: "assets/users/user3.png",
                      name: "@yuanita",
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                    "Friendly Tips",
                    style: AppStyle.darkText.copyWith(fontSize: 16, fontWeight: FontWeight.w600))),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 24),
              child: const Wrap(
                spacing: 17,
                runSpacing: 17,
                alignment: WrapAlignment.spaceBetween,
                children: [
                  CardFriendlyTips(
                    image: "assets/tips/tips1.png",
                    text: "Best tips for using a credit card",
                  ),
                  CardFriendlyTips(
                    image: "assets/tips/tips2.png",
                    text: "Spot the good pie of finance model",
                  ),
                  CardFriendlyTips(
                    image: "assets/tips/tips3.png",
                    text: "Great hack to get better advices",
                  ),
                  CardFriendlyTips(
                    image: "assets/tips/tips4.png",
                    text: "Save more penny buy this instead",
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
          ],
        )
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

class CardAction extends StatelessWidget {
  final String icon;
  final String label;
  const CardAction({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: (MediaQuery.of(context).size.width - 96) / 4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColor(AppColor.colorWhite)
            ),
            child: Center(
              child: SvgPicture.asset(
                icon,
                height: 24,
                colorFilter: ColorFilter.mode(AppColor(AppColor.colorDark), BlendMode.srcIn),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
              label,
              textAlign: TextAlign.center,
              style: AppStyle.darkText.copyWith(fontSize: 14, fontWeight: FontWeight.w600)
          )
        ],
      ),
    );
  }
}

class CardSendAgain extends StatelessWidget {
  final String image;
  final String name;
  const CardSendAgain({super.key, required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        color: AppColor(AppColor.colorWhite),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover
                )
            ),
          ),
          const SizedBox(height: 13),
          Text(name, textAlign: TextAlign.center, style: AppStyle.darkText)
        ],
      ),
    );
  }
}

class CardFriendlyTips extends StatelessWidget {
  final String image;
  final String text;
  const CardFriendlyTips({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width - 65) / 2,
      decoration: BoxDecoration(
          color: AppColor(AppColor.colorWhite),
          borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 110,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover
                )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(text, style: AppStyle.darkText.copyWith(fontSize: 14, fontWeight: FontWeight.w500)),
          )
        ],
      ),
    );
  }
}