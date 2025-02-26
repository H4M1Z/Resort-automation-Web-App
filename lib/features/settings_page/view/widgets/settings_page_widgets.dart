import 'package:resort_web_app/barrel.dart';

class SettingsBrightnessColumn extends StatelessWidget {
  const SettingsBrightnessColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: BrightnessText(),
        ),
        Expanded(
          flex: 7,
          child: BrightnessImage(),
        ),
        Expanded(
          child: Align(alignment: Alignment(-0.9, 0.0), child: AppBackButton()),
        )
      ],
    );
  }
}

class BrightnessText extends StatelessWidget {
  const BrightnessText({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Text(
        AppStringConstants.settingsScreenBrightness,
        style: GoogleFonts.montserrat(
          fontSize: 38,
          color: Theme.of(context).textTheme.bodyLarge!.color,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

class BrightnessImage extends StatelessWidget {
  const BrightnessImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        width: 100,
        height: 900,
        'assets/images/brightness_70.png',
      ),
    );
  }
}

//...................Date And Time Column

class SettingsDateAndTimeColumn extends StatelessWidget {
  const SettingsDateAndTimeColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Expanded(
          child: DateAndTimeText(),
        ),
        Expanded(
          child: SetDateAndTimeWidget(
            onTap: () => Navigator.pushNamed(context, RouteName.dateSetting),
            firstText: AppStringConstants.settingsScreenSetDate,
            secondText: AppStringConstants.settingsScreenMMDDYYY,
            icon: Icons.calendar_month_rounded,
          ),
        ),
        Spacer(
          flex: 2,
        ),
        Expanded(
          child: SetDateAndTimeWidget(
            onTap: () => Navigator.pushNamed(context, RouteName.timeSetting),
            firstText: AppStringConstants.settingsScreenSetTime,
            secondText: AppStringConstants.settingsScreenHHMMSS,
            icon: Icons.access_time_rounded,
          ),
        ),
        Spacer(
          flex: 2,
        ),
      ],
    );
  }
}

class DateAndTimeText extends StatelessWidget {
  const DateAndTimeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(0, -0.8),
      child: Text(
        AppStringConstants.settingsScreenDateAndTime,
        style: GoogleFonts.montserrat(
          fontSize: 38,
          color: Theme.of(context).textTheme.bodyLarge!.color,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

//..........SET TIME WIDGET

class SetDateAndTimeWidget extends StatelessWidget {
  const SetDateAndTimeWidget(
      {super.key,
      required this.firstText,
      required this.secondText,
      required this.icon,
      required this.onTap});
  final String firstText;
  final String secondText;
  final IconData icon;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Expanded(
              child: Column(
            children: [
              Expanded(
                  child: Center(
                child: Text(
                  firstText,
                  style: GoogleFonts.montserrat(
                    fontSize: 28,
                    color: Theme.of(context).textTheme.bodyLarge!.color,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              )),
              Expanded(
                  child: Center(
                child: Text(
                  secondText,
                  style: GoogleFonts.montserrat(
                    fontSize: 28,
                    color: Theme.of(context).textTheme.bodyLarge!.color,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ))
            ],
          )),
          Expanded(
              child: Icon(
            icon,
            color: Theme.of(context).iconTheme.color,
            size: 100,
          )),
        ],
      ),
    );
  }
}

class SettingsBackgroundColumn extends StatelessWidget {
  const SettingsBackgroundColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: BackgroundText(),
        ),
        Expanded(
          child: ThemesButton(
            selected: false,
            text: AppStringConstants.settingsScreenDayMode,
          ),
        ),
        Expanded(
            flex: 2,
            child: ThemesButton(
              selected: false,
              text: AppStringConstants.settingsScreenNightMode,
            )),
        Expanded(
          flex: 2,
          child: ThemesButton(
            selected: true,
            alignment: Alignment.topCenter,
            text: AppStringConstants.settingsScreenAutoSelect,
          ),
        ),
        Spacer(),
      ],
    );
  }
}

class BackgroundText extends StatelessWidget {
  const BackgroundText({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(0, 0.5),
      child: Text(
        AppStringConstants.settingsScreenBackGround,
        style: GoogleFonts.montserrat(
          fontSize: 38,
          color: Theme.of(context).textTheme.bodyLarge!.color,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

//............BUTTON BANANA HAY
class ThemesButton extends StatelessWidget {
  const ThemesButton(
      {super.key,
      required this.text,
      this.alignment = Alignment.center,
      required this.selected});
  final String text;
  final AlignmentGeometry alignment;
  final bool selected;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Container(
        width: 250,
        height: 80,
        decoration: BoxDecoration(
          color: Theme.of(context).brightness == Brightness.dark
              ? AppColors.darkGreyColor
              : AppColors.greyColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Expanded(
              child: Center(
                child: Text(
                  text,
                  style: GoogleFonts.montserrat(
                    fontSize: 30,
                    color: Theme.of(context).textTheme.bodyLarge!.color,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            if (selected)
              Icon(
                Icons.check_box_outlined,
                color: AppColors.blackColor,
                size: 50,
              )
            else
              SizedBox(),
          ],
        ),
      ),
    );
  }
}
