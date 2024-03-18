import "package:bank_sha_modular/import_all.dart";

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  CarouselController carouselController = CarouselController();
  int currentPage = 0;
  List<Map<String, String>> onBoardingContent = [
    {
      "title": "Grow Your\nFinancial Today",
      "subtitle": "Our system is helping you to\nachieve a better goal",
      "image": "assets/images/splash-1.png",
    },
    {
      "title": "Build From\nZero to Freedom",
      "subtitle": "We provide tips for you so that\nyou can adapt easier",
      "image": "assets/images/splash-2.png",
    },
    {
      "title": "Start Together",
      "subtitle": "We will guide you to where\nyou wanted it too",
      "image": "assets/images/splash-3.png",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor(AppColor.colorWhiteBone),
      body: AnimationLimiter(
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const SizedBox(height: 65),
                AnimationConfiguration.staggeredList(
                  position: 0,
                  duration: const Duration(milliseconds: 500),
                  child: ScaleAnimation(
                    scale: 0.2,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width - 40,
                      child: CarouselSlider.builder(
                        carouselController: carouselController,
                        itemCount: onBoardingContent.length,
                        options: CarouselOptions(
                          aspectRatio: 1,
                          viewportFraction: 0.9,
                          pageSnapping: true,
                          enableInfiniteScroll: false,
                          onPageChanged: (index, reason) {
                            setState(() => currentPage = index);
                          },
                        ),
                        itemBuilder: buildCarousel,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 45),
                AnimationConfiguration.staggeredList(
                  position: 0,
                  duration: const Duration(milliseconds: 500),
                  child: SlideAnimation(
                    verticalOffset: 100,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Container(
                          margin: const EdgeInsets.all(24),
                          padding: const EdgeInsets.all(24),
                          decoration: BoxDecoration(
                            color: AppColor(AppColor.colorWhite),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Flexible(
                                    child: Text(
                                      onBoardingContent[currentPage]["title"] ??
                                          "",
                                      textAlign: TextAlign.center,
                                      style: AppStyle.primaryDarkText.copyWith(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 28),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Flexible(
                                    child: Text(
                                      onBoardingContent[currentPage]["subtitle"] ?? "",
                                      textAlign: TextAlign.center,
                                      style: AppStyle.greyText.copyWith(fontSize: 16),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 50),
                              if (currentPage != (onBoardingContent.length - 1)) ...{
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Wrap(
                                      spacing: 10,
                                      children: [
                                        dot(0),
                                        dot(1),
                                        dot(2),
                                      ],
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        carouselController.nextPage();
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
                                  ],
                                )
                              } else ...{
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    SizedBox(
                                      width: double.infinity,
                                      child: InkWell(
                                        onTap: () {
                                          Modular.to.pushNamed("/auth/register");
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 15,
                                            horizontal: 38,
                                          ),
                                          decoration: BoxDecoration(
                                            color: AppColor(AppColor.colorPrimary),
                                            borderRadius: BorderRadius.circular(60),
                                          ),
                                          child: Text(
                                            "Get Started",
                                            textAlign: TextAlign.center,
                                            style: AppStyle.whiteText.copyWith(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Modular.to.pushNamed("/auth/login");
                                      },
                                      child: Container(
                                        margin: const EdgeInsets.only(
                                          top: 20,
                                        ),
                                        child: Text(
                                          "Sign In",
                                          textAlign: TextAlign.center,
                                          style: AppStyle.greyText.copyWith(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              }
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCarousel(BuildContext context, int itemIndex, int pageViewIndex) {
    return Image.asset(
      onBoardingContent[itemIndex]["image"] ?? "",
    );
  }

  Widget dot(int index) {
    return Container(
      width: 12,
      height: 12,
      decoration: ShapeDecoration(
        shape: const CircleBorder(),
        color: AppColor(
          index == currentPage
              ? AppColor.colorPrimaryAccent
              : AppColor.colorWhiteBone,
        ),
      ),
    );
  }
}
