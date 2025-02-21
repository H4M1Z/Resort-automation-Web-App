import 'package:resort_web_app/barrel.dart';
import 'package:resort_web_app/features/theme/theme.dart';
import 'package:resort_web_app/features/weather_page/view/weather_page.dart';

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
      darkTheme: darkTheme,
      themeMode: ThemeMode.dark,
      theme: lightTheme,
      home: WeatherPage(),
    );
  }
}
