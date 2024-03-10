import 'import_all.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    if (mounted) {
      Timer(const Duration(milliseconds: 100), () async {
        if (mounted) {
          startSplashScreen();
        }
      });
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor(AppColor.colorDark),
      body: Center(
        child: SvgPicture.asset(
          "assets/icons/sha-logo-dark.svg",
          height: 50,
        ),
      ),
    );
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 5);

    return Timer(duration, () {
      Modular.to.navigate("/on-boarding");
    });
  }
}
