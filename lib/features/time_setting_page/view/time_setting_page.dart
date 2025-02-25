import 'package:resort_web_app/barrel.dart';
import 'package:resort_web_app/features/time_setting_page/view/widgets/time_setting_page_widgets.dart';

class TimeSettingPage extends StatelessWidget {
  const TimeSettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: TimeHeading(),
          ),
          Expanded(
            flex: 1,
            child: CurrentTime(),
          ),
          Expanded(
            flex: 2,
            child: IncreaseTimeControlButtons(),
          ),
          Expanded(
            flex: 3,
            child: HourAndMinuteNumbers(),
          ),
          Expanded(
            flex: 1,
            child: HourAndMinuteText(),
          ),
          Expanded(
            flex: 2,
            child: DecreaseTimeControlButtons(),
          ),
          Expanded(
            flex: 1,
            child: AMPMButtonsRow(),
          ),
          Expanded(
            flex: 2,
            child: ConfirmCancelButtonsRow(),
          ),
        ],
      ),
    );
  }
}
