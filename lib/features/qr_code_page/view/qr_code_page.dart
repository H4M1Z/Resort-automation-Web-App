import 'package:flutter/material.dart';
import 'package:resort_web_app/features/qr_code_page/view/widgets/qr_code_page_widgets.dart';

class QRCodePage extends StatelessWidget {
  const QRCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Spacer(),
          Expanded(
            flex: 8,
            child: Center(
              child: QRCodes(),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
