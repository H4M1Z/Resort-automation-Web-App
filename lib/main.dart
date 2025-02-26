import 'package:resort_web_app/barrel.dart';

void main() {
  runApp(
    const ResortApp(),
  );
}

class ResortApp extends ConsumerWidget {
  const ResortApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RouteName.home,
      onGenerateRoute: onGenerateRoute,
      darkTheme: darkTheme,
      themeMode: ThemeMode.dark,
      theme: lightTheme,
      home: HomePage(),
    );
  }
}
