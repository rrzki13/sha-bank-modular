import 'import_all.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => [CoreModule()];

  @override
  void routes(RouteManager r) {
    r.child("/splash-screen", child: (context) => const SplashScreen());
    r.child("/on-boarding", child: (context) => const OnBoardingScreen());
    r.child("/auth/register", child: (context) => const RegisterScreen());
    super.routes(r);
  }

}

class CoreModule extends Module {
  @override
  void exportedBinds(Injector i) {
    // i.addSingleton(constructor)
  }
}
