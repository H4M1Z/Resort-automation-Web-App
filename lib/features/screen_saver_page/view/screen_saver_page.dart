import 'package:flutter/material.dart';
import 'package:resort_web_app/features/screen_saver_page/view/widgets/screen_saver_page_widgets.dart';

class ScreenSaverPage extends StatelessWidget {
  const ScreenSaverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Spacer(),
          Expanded(
            flex: 8,
            child: Center(
              child: Logos(),
            ),
          ),
          Expanded(
            child: LowerDesign(),
          )
        ],
      ),
    );
  }
}
