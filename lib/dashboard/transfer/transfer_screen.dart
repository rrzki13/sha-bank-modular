import "package:bank_sha_modular/import_all.dart";

class TransferScreen extends StatelessWidget {
  const TransferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final transferController = Modular.get<TransferController>();

    return Scaffold(
      backgroundColor: AppColor("#F6F8FB"),
      appBar: AppBar(
          backgroundColor: AppColor(AppColor.colorWhite),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new_outlined, color: AppColor(AppColor.colorDark)),
            onPressed: () => Modular.to.pop(),
          ),
          title: Text("Transfer", style: AppStyle.darkText.copyWith(fontSize: 20, fontWeight: FontWeight.w600)),
          centerTitle: true
      ),
      body: ListView(
        children: [
          const SizedBox(height: 30),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text("Search", style: AppStyle.darkText.copyWith(fontSize: 16, fontWeight: FontWeight.w600))
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: TextFormField(
              controller: transferController.searchingController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: "by username",
                hintStyle: AppStyle.greyText.copyWith(fontSize: 14),
                contentPadding: const EdgeInsets.all(12),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColor("#EFEEF1")),
                  borderRadius: BorderRadius.circular(14),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColor(AppColor.colorPrimary)),
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text("Recent Users", style: AppStyle.darkText.copyWith(fontSize: 16, fontWeight: FontWeight.w600))
          ),
          const SizedBox(height: 15),
          buildRecentUser(
            context: context,
            image: "assets/users/user2.png",
            name: "Yosan",
            username: "yosss",
            isVerified: true
          ),
          const SizedBox(height: 20),
          buildRecentUser(
              context: context,
              image: "assets/users/user1.png",
              name: "Iki",
              username: "kyy",
              isVerified: true
          ),
          const SizedBox(height: 20),
          buildRecentUser(
              context: context,
              image: "assets/users/user3.png",
              name: "Ferli",
              username: "ferli"
          ),
          const SizedBox(height: 20),
          buildRecentUser(
              context: context,
              image: "assets/users/user4.png",
              name: "Kanza",
              username: "kan"
          ),
        ],
      ),
    );
  }

  Widget buildRecentUser({
    required BuildContext context,
    required String image,
    required String name,
    required String username,
    bool isVerified = false
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      padding: const EdgeInsets.all(22),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: AppColor(AppColor.colorWhite),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 14,
            children: [
              Container(
                width: 45,
                height: 45,
                decoration: ShapeDecoration(
                    shape: const CircleBorder(),
                    image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: AppStyle.darkText.copyWith(fontSize: 16, fontWeight: FontWeight.w600)),
                  Text("@$username", style: AppStyle.greyText)
                ],
              )
            ],
          ),
          if (isVerified) ...{
              Wrap(
                alignment: WrapAlignment.center,
                children: [
                  SizedBox(
                    width: 14,
                    height: 14,
                    child: SvgPicture.asset("assets/icons/ic-check.svg", colorFilter: ColorFilter.mode(AppColor(AppColor.colorGreen), BlendMode.srcIn)),
                  ),
                  Text("Verified", style: AppStyle.greenTextStyle.copyWith(fontSize: 11, fontWeight: FontWeight.w600))
                ],
              )
          }
        ],
      ),
    );
  }

}