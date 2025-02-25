import 'package:resort_web_app/barrel.dart';

class AutomationHeading extends StatelessWidget {
  const AutomationHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Text(
        AppStringConstants.automationScreenHeading,
        style: GoogleFonts.montserrat(
          fontSize: 35,
          color: Theme.of(context).textTheme.bodyMedium!.color,
        ),
      ),
    );
  }
}

class ApplianceButton extends StatelessWidget {
  const ApplianceButton({super.key, required this.btnText});
  final String btnText;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(),
        Expanded(
            child: Center(child: ApplianceButtonContainer(btnText: btnText))),
      ],
    );
  }
}

class FanAndLightApplianceButton extends StatelessWidget {
  const FanAndLightApplianceButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(),
        Expanded(
            flex: 5,
            child: Align(
              alignment: Alignment.centerRight,
              child: ApplianceButtonContainer(
                btnText: AppStringConstants.automationScreenFan,
                icon: Icons.severe_cold_outlined,
                color: AppColors.blackColor,
              ),
            )),
        Expanded(
            flex: 3,
            child: Center(
                child: ApplianceButtonContainer(
                    btnText: AppStringConstants.automationScreenLightThree))),
        Spacer(),
      ],
    );
  }
}

class ApplianceButtonContainer extends StatelessWidget {
  const ApplianceButtonContainer(
      {super.key,
      required this.btnText,
      this.icon = Icons.lightbulb,
      this.color = AppColors.yellowColor});
  final String btnText;
  final IconData icon;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: Theme.of(context).brightness == Brightness.dark
            ? AppColors.whiteColor
            : AppColors.greyColor,
      ),
      child: Center(
        child: Row(
          children: [
            Expanded(
                child: Center(
              child: Icon(
                Icons.check_circle,
                color: AppColors.blackColor,
                size: 60,
              ),
            )),
            Expanded(
                flex: 2,
                child: Center(
                  child: Text(
                    btnText,
                    style: GoogleFonts.montserrat(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: AppColors.blackColor,
                    ),
                  ),
                )),
            Expanded(
              child: Center(
                child: Icon(
                  icon,
                  color: color,
                  size: 60,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
