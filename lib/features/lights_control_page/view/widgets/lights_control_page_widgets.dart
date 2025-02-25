import 'package:resort_web_app/barrel.dart';

class LightsHeading extends StatelessWidget {
  const LightsHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Text(
        AppStringConstants.lightsScreenLights,
        style: GoogleFonts.montserrat(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Theme.of(context).textTheme.bodyMedium!.color,
        ),
      ),
    );
  }
}

class Lights extends StatelessWidget {
  const Lights({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: LightsRow(),
        ),
        Expanded(
          child: LightsRow(),
        ),
      ],
    );
  }
}

class LightsRow extends StatelessWidget {
  const LightsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(),
        Expanded(
          child: Light(),
        ),
        Expanded(
          child: Light(),
        ),
        Spacer(),
      ],
    );
  }
}

class Light extends StatelessWidget {
  const Light({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Center(
      child: Container(
        width: 150,
        height: 200,
        decoration: BoxDecoration(
          color: isDarkMode ? AppColors.blackColor : AppColors.whiteColor,
          shape: BoxShape.circle,
          border: Border.all(
            color: isDarkMode ? AppColors.whiteColor : AppColors.blackColor,
            width: 11,
          ),
        ),
      ),
    );
  }
}
