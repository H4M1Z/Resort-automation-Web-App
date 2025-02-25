import 'package:resort_web_app/barrel.dart';
import 'package:resort_web_app/features/automation_page/view/widgets/automation_page_widgets.dart';

class AutomationPage extends StatelessWidget {
  const AutomationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: AutomationHeading(),
          ),
          Expanded(
            flex: 2,
            child: ApplianceButton(
              btnText: AppStringConstants.automationScreenLightOne,
            ),
          ),
          Expanded(
            flex: 2,
            child: ApplianceButton(
              btnText: AppStringConstants.automationScreenLightTwo,
            ),
          ),
          Expanded(
            flex: 2,
            child: FanAndLightApplianceButton(),
          ),
          Expanded(
            flex: 2,
            child: ApplianceButton(
              btnText: AppStringConstants.automationScreenLightFour,
            ),
          ),
          Expanded(
            flex: 2,
            child: ApplianceButton(
              btnText: AppStringConstants.automationScreenLightFive,
            ),
          ),
          Expanded(
            child: ConfirmCancelButtonsRow(),
          ),
        ],
      ),
    );
  }
}
