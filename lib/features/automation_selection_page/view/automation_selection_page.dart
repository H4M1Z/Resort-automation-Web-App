import 'package:resort_web_app/barrel.dart';
import 'package:resort_web_app/features/automation_page/view/widgets/automation_page_widgets.dart';
import 'package:resort_web_app/features/automation_selection_page/view/widgets/automation_selection_page_widgets.dart';

class AutomationSelectionPage extends StatelessWidget {
  const AutomationSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: AutomationHeading(),
            ),
            Expanded(
              flex: 8,
              child: AutomationSelectionCenterDesign(),
            ),
            Expanded(
              child: ConfirmCancelButtonsRow(),
            )
          ],
        ),
      ),
    );
  }
}
