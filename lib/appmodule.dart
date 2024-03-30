import 'import_all.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => [CoreModule()];

  @override
  void routes(RouteManager r) {
    r.child("/splash-screen", child: (context)            => const SplashScreen());
    r.child("/on-boarding", child: (context)              => const OnBoardingScreen());
    r.child("/auth/login", child: (context)               => const LoginScreen());
    r.child("/auth/register", child: (context)            => const RegisterScreen());
    r.child("/auth/register/upload-pic", child: (context) => RegisterUploadPicScreen(bioData: r.args.data), transition: TransitionType.size);
    r.child("/auth/register/upload-id", child: (context)  => const RegisterUploadIdCardScreen());

    r.child("/home/pin", child: (context)                 => const PinScreen());
    r.child("/home", child: (context)                     => const DashboardScreen());
    super.routes(r);
  }

}

class CoreModule extends Module {
  @override
  void exportedBinds(Injector i) {
    i.addSingleton<RegisterController>(RegisterController.new, config: BindConfig(onDispose: (s) => s.dispose()));
    i.addSingleton<LoginController>(LoginController.new, config: BindConfig(onDispose: (s) => s.dispose()));
    i.addSingleton<PinController>(PinController.new, config: BindConfig(onDispose: (s) => s.dispose()));
  }
}
