import '../../../barrel.dart';
import 'widgets/settings_page_widgets.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: SettingsBrightnessColumn(),
          ),
          Expanded(
            child: SettingsDateAndTimeColumn(),
          ),
          Expanded(
            child: SettingsBackgroundColumn(),
          ),
        ],
      ),
    );
  }
}
