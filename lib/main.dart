import 'import_all.dart';

void main() {
  runApp(ModularApp(module: AppModule(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute('/splash-screen');
    return MaterialApp.router(
      title: 'BANK SHA',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: [
          const Breakpoint(start: 0, end: 450, name: MOBILE),
          const Breakpoint(start: 450, end: 600, name: TABLET),
          const Breakpoint(start: 600, end: 1300, name: DESKTOP),
          //const ResponsiveBreakpoint.autoScale(500, name: '4K'),
        ],
      ),
      routerConfig: Modular.routerConfig,
    );
  }
}
