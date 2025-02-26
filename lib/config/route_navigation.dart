import 'package:resort_web_app/barrel.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case RouteName.home:
      return MaterialPageRoute(builder: (_) => const HomePage());
    case RouteName.weather:
      return MaterialPageRoute(builder: (_) => const WeatherPage());
    case RouteName.settings:
      return MaterialPageRoute(builder: (_) => const SettingsPage());
    case RouteName.automation:
      return MaterialPageRoute(builder: (_) => const AutomationPage());
    case RouteName.automationSelection:
      return MaterialPageRoute(builder: (_) => const AutomationSelectionPage());
    case RouteName.dateSetting:
      return MaterialPageRoute(builder: (_) => const DateSettingPage());
    case RouteName.timeSetting:
      return MaterialPageRoute(builder: (_) => const TimeSettingPage());
    case RouteName.lightsControl:
      return MaterialPageRoute(builder: (_) => const LightsControlPage());
    case RouteName.screenSaver:
      return MaterialPageRoute(builder: (_) => const ScreenSaverPage());
    default:
      return MaterialPageRoute(builder: (_) => const HomePage());
  }
}

abstract class RouteName {
  static const String home = '/';
  static const String weather = '/weather';
  static const String settings = '/settings';
  static const String automation = '/automation';
  static const String automationSelection = '/automationSelection';
  static const String dateSetting = '/dateSetting';
  static const String timeSetting = '/timeSetting';
  static const String lightsControl = '/lightsControl';
  static const String screenSaver = '/screenSaver';
}
