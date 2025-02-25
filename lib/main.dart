import 'package:resort_web_app/barrel.dart';
import 'package:resort_web_app/features/qr_code_page/view/qr_code_page.dart';
import 'package:resort_web_app/theme/theme.dart';

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
      home: QRCodePage(),
    );
  }
}
