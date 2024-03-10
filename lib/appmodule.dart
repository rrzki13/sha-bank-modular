import 'import_all.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => [CoreModule()];

  @override
  void routes(RouteManager r) {
    r.child("/splash-screen", child: (context) => const SplashScreen());
    r.child("/on-boarding", child: (context) => const OnBoardingScreen());
    r.child("/auth/register", child: (context) => const RegisterScreen());
    r.child("/auth/register/upload-pic", child: (context) => const RegisterUploadPicScreen());
    r.child("/auth/register/upload-id", child: (context) => const RegisterUploadIdCardScreen());
    super.routes(r);
  }

}

class CoreModule extends Module {
  @override
  void exportedBinds(Injector i) {
    i.addSingleton<RegisterController>(RegisterController.new, config: BindConfig(onDispose: (s) => s.dispose()));
  }
}
