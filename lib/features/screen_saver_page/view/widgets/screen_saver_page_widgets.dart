import 'package:resort_web_app/barrel.dart';

class Logos extends StatelessWidget {
  const Logos({super.key});
  static const logoImage = 'assets/images/khar_logo_dark.png';
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
          child: Image.asset(
            logoImage,
            width: 300,
            height: 300,
          ),
        );
      },
    );
  }
}

class LowerDesign extends StatelessWidget {
  const LowerDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Center(
            child: AppBackButton(),
          ),
        ),
        Expanded(
          flex: 8,
          child: MachaDevText(),
        ),
        Spacer()
      ],
    );
  }
}

class MachaDevText extends StatelessWidget {
  const MachaDevText({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Text(
        AppStringConstants.qrCodeScreenMachaDevText,
        style: GoogleFonts.montserrat(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: Theme.of(context).textTheme.bodySmall!.color,
        ),
      ),
    );
  }
}
