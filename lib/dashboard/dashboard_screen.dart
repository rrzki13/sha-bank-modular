import "package:bank_sha_modular/import_all.dart";

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final dashboardController = Modular.get<DashboardController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor("#F6F8FB"),
      extendBodyBehindAppBar: false,
      body: IndexedStack(
        index: dashboardController.activePage,
        children: const [
          HomeScreen(),
          HistoryScreen()
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: AppColor(AppColor.colorWhite),
        shape: const CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        notchMargin: 6,
        child: BottomNavigationBar(
          backgroundColor: AppColor(AppColor.colorWhite),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColor(AppColor.colorPrimaryAccent),
          unselectedItemColor: AppColor(AppColor.colorDark),
          selectedLabelStyle: AppStyle.primaryAccentStyle.copyWith(fontWeight: FontWeight.w500, fontSize: 10),
          unselectedLabelStyle: AppStyle.darkText.copyWith(fontWeight: FontWeight.w500, fontSize: 10),
          showUnselectedLabels: true,
          onTap: onItemTapped,
          elevation: 0.0,
          useLegacyColorScheme: false,
          currentIndex: dashboardController.activePage,
          items: [
            BottomNavigationBarItem(
              activeIcon: SvgPicture.asset("assets/icons/ic-overview.svg", colorFilter: ColorFilter.mode(AppColor(AppColor.colorPrimaryAccent), BlendMode.srcIn)),
              icon: SvgPicture.asset("assets/icons/ic-overview.svg", colorFilter: ColorFilter.mode(AppColor(AppColor.colorDark), BlendMode.srcIn)),
              label: "Overview",
            ),
            BottomNavigationBarItem(
              activeIcon: SvgPicture.asset("assets/icons/ic-history.svg", colorFilter: ColorFilter.mode(AppColor(AppColor.colorPrimaryAccent), BlendMode.srcIn)),
              icon: SvgPicture.asset("assets/icons/ic-history.svg", colorFilter: ColorFilter.mode(AppColor(AppColor.colorDark), BlendMode.srcIn)),
              label: "History",
            ),
            BottomNavigationBarItem(
              activeIcon: SvgPicture.asset("assets/icons/ic-statistic.svg", colorFilter: ColorFilter.mode(AppColor(AppColor.colorPrimaryAccent), BlendMode.srcIn)),
              icon: SvgPicture.asset("assets/icons/ic-statistic.svg", colorFilter: ColorFilter.mode(AppColor(AppColor.colorDark), BlendMode.srcIn)),
              label: "Statistic",
            ),
            BottomNavigationBarItem(
              activeIcon: SvgPicture.asset("assets/icons/ic-reward.svg", colorFilter: ColorFilter.mode(AppColor(AppColor.colorPrimaryAccent), BlendMode.srcIn)),
              icon: SvgPicture.asset("assets/icons/ic-reward.svg", colorFilter: ColorFilter.mode(AppColor(AppColor.colorDark), BlendMode.srcIn)),
              label: "Reward",
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: const CircleBorder(),
        backgroundColor: AppColor(AppColor.colorPrimary),
        child: SvgPicture.asset(
          "assets/icons/ic-plus-circle.svg",
          width: 30,
          colorFilter: ColorFilter.mode(
            AppColor(AppColor.colorWhite),
            BlendMode.srcIn
          )
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  void onItemTapped(int index) {
    setState(() {
      dashboardController.onChangePage(index);
    });
  }
}

