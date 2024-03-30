import "package:bank_sha_modular/import_all.dart";

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
                      CustomTextField(
                        label: "Full Name",
                        controller: registerController.fullNameController,
                      ),
                      const SizedBox(height: 16),
                      CustomTextField(
                        label: "Email Address",
                        controller: registerController.emailController,
                        keyboardType: TextInputType.emailAddress,
                      ),
                      const SizedBox(height: 16),
                      CustomTextField(
                        label: "Password",
                        controller: registerController.passwordController,
                        obscureText: true,
                      ),
                      const SizedBox(height: 30),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Map<String, String> bioData = {
                              "fullName": registerController.fullNameController.text.toString(),
                              "email": registerController.emailController.text.toString(),
                              "password": registerController.passwordController.text.toString(),
                            };
                            Modular.to.navigate("/auth/register/upload-pic", arguments: bioData);
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
                const SizedBox(height: 50),
                Center(
                  child: InkWell(
                    onTap: () {
                      Modular.to.navigate("/auth/login");
                    },
                    child: Text(
                      "Sign In",
                      textAlign: TextAlign.center,
                      style: AppStyle.greyText.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 50),
              ],
            ),
          )
        ],
      ),
    );
  }
}