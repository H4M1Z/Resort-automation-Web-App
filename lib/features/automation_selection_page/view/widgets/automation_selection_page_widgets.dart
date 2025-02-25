import 'package:resort_web_app/barrel.dart';

class AutomationSelectionCenterDesign extends StatelessWidget {
  const AutomationSelectionCenterDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Center(
          child: RotatedBox(
            quarterTurns: 1,
            child: Icon(
              Icons.wifi,
              size: 300,
              color: Theme.of(context).iconTheme.color,
            ),
          ),
        )),
        Expanded(
          child: AutomationSelectionButton(
            leading: Icon(
              Icons.check_circle,
              color: AppColors.blackColor,
              size: 60,
            ),
            trailing: Icon(
              Icons.lightbulb,
              color: AppColors.yellowColor,
              size: 60,
            ),
            text: AppStringConstants.automationSelectionScreenAutomate,
          ),
        ),
        Expanded(
          child: AutomationSelectionButton(
            leading: Icon(
              Icons.lightbulb,
              color: AppColors.yellowColor,
              size: 60,
            ),
            trailing: Switch.adaptive(
              activeColor: AppColors.whiteColor,
              activeTrackColor: AppColors.greenColor,
              value: true,
              onChanged: (value) => '',
            ),
            text: AppStringConstants.automationSelectionScreenManual,
          ),
        ),
      ],
    );
  }
}

class AutomationSelectionButton extends StatelessWidget {
  const AutomationSelectionButton(
      {super.key,
      required this.leading,
      required this.trailing,
      required this.text});
  final Widget leading, trailing;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 450,
            height: 100,
            decoration: BoxDecoration(
              color: Theme.of(context).brightness == Brightness.dark
                  ? AppColors.whiteColor
                  : AppColors.greyColor,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Center(child: leading),
                ),
                Expanded(
                  flex: 2,
                  child: Center(
                      child: Text(
                    textAlign: TextAlign.center,
                    AppStringConstants.automationSelectionScreenMotionSensor,
                    style: GoogleFonts.montserrat(
                      fontSize: 25,
                      color: AppColors.blackColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                ),
                Expanded(
                  child: Center(child: trailing),
                ),
              ],
            ),
          ),
          Text(
            text,
            style: GoogleFonts.montserrat(
              fontSize: 30,
              color: Theme.of(context).textTheme.bodyMedium!.color,
            ),
          ),
        ],
      ),
    );
  }
}
