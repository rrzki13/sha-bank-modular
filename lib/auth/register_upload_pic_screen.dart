import "package:bank_sha_modular/import_all.dart";

class RegisterUploadPicScreen extends StatefulWidget {
  const RegisterUploadPicScreen({super.key});

  @override
  State<RegisterUploadPicScreen> createState() => _RegisterUploadPicScreenState();
}

class _RegisterUploadPicScreenState extends State<RegisterUploadPicScreen> {
  final registerController = Modular.get<RegisterController>();

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
                ),
                const SizedBox(height: 30),
                Container(
                  padding: const EdgeInsets.all(22),
                  decoration: BoxDecoration(
                    color: AppColor(AppColor.colorWhite),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(44),
                        decoration: ShapeDecoration(
                          shape: const CircleBorder(),
                          color: AppColor(AppColor.colorWhiteBone)
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            "assets/icons/ic-upload.svg",
                            width: 32,
                            colorFilter: ColorFilter.mode(AppColor(AppColor.colorGrey), BlendMode.srcIn),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Center(
                        child: Text(
                          "Iki Ramadhan",
                          style: AppStyle.darkText.copyWith(fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                      ),
                      const SizedBox(height: 30),
                      CustomTextField(
                        label: "Set PIN (6 digit number)",
                        controller: registerController.pinController,
                        obscureText: true,
                        keyboardType: TextInputType.number,
                      ),
                      const SizedBox(height: 50),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Modular.to.pushNamed("/auth/register/upload-id");
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                60,
                              ),
                            ),
                            padding: const EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 38,
                            ),
                            alignment: Alignment.center,
                            backgroundColor: AppColor(
                              AppColor.colorPrimary,
                            ),
                          ),
                          child: Text(
                            "Continue",
                            textAlign: TextAlign.center,
                            style: AppStyle.whiteText.copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
