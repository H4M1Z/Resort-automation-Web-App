import 'package:resort_web_app/barrel.dart';
import 'package:resort_web_app/features/date_setting_page/view/widgets/date_setting_page_widgets.dart';

class DateSettingPage extends StatelessWidget {
  const DateSettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: DateHeading(),
          ),
          Expanded(
            flex: 1,
            child: CurrentDate(),
          ),
          Expanded(
            flex: 2,
            child: IncreaseDateButtons(),
          ),
          Expanded(
            flex: 3,
            child: DateNumbers(),
          ),
          Expanded(
            flex: 1,
            child: DateTexts(),
          ),
          Expanded(
            flex: 2,
            child: DecreaseDateButtons(),
          ),
          Expanded(
            flex: 3,
            child: ConfirmCancelButtonsRow(),
          ),
        ],
      ),
    );
  }
}
