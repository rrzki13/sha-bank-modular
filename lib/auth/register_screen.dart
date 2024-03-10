import "package:bank_sha_modular/import_all.dart";

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor(AppColor.colorWhiteBone),
      body: ListView(
        children: [
          const SizedBox(height: 100),
          Center(
            child: SvgPicture.asset(
              "assets/icons/sha-logo.svg",
              height: 50,
            ),
          ),
          const SizedBox(height: 100),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Join Us to Unlock\nYour Growth",
                  style: AppStyle.darkText.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
