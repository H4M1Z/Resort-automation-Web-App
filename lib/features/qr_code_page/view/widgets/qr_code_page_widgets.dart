import 'package:qr_flutter/qr_flutter.dart';
import 'package:resort_web_app/barrel.dart';

class QRCodes extends StatelessWidget {
  const QRCodes({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: AppNumericCosntants.qrCodeScreenGridCount,
        mainAxisExtent: 300,
      ),
      itemCount: 6,
      itemBuilder: (context, index) {
        return Center(
          child: QrImageView(
              //.................. Put the Device Data here
              data: '${index + 1}',
              size: 200,
              version: QrVersions.auto,
              backgroundColor: AppColors.whiteColor),
        );
      },
    );
  }
}
