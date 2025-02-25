import 'package:resort_web_app/barrel.dart';
import 'package:resort_web_app/features/lights_control_page/view/widgets/lights_control_page_widgets.dart';

class LightsControlPage extends StatelessWidget {
  const LightsControlPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: LightsHeading(),
          ),
          Expanded(
            flex: 7,
            child: Lights(),
          ),
          Expanded(
            flex: 2,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30.0,
                ),
                child: AppBackButton(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
