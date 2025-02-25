import 'package:intl/intl.dart';

import '../../../../barrel.dart';

class TimeHeading extends StatelessWidget {
  const TimeHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(AppStringConstants.timeSettingScreenTime,
          style: GoogleFonts.montserrat(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).textTheme.bodyMedium!.color,
          )),
    );
  }
}

class CurrentTime extends StatelessWidget {
  const CurrentTime({super.key});

  @override
  Widget build(BuildContext context) {
    final dateTime = DateTime.now();
    final formattedTime = DateFormat('hh : mm a').format(dateTime);
    return Center(
      child: Text(
        formattedTime,
        style: GoogleFonts.montserrat(
          fontSize: 25,
          color: Theme.of(context).textTheme.bodyMedium!.color,
        ),
      ),
    );
  }
}

class HourAndMinuteNumbers extends StatelessWidget {
  const HourAndMinuteNumbers({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Center(
            child: Text(
              DateFormat('hh').format(DateTime.now()),
              style: GoogleFonts.montserrat(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).brightness == Brightness.dark
                    ? AppColors.whiteColor
                    : AppColors.blackColor,
              ),
            ),
          ),
        ),
        Text(
          ':',
          style: GoogleFonts.montserrat(
            fontSize: 50,
            color: Theme.of(context).brightness == Brightness.dark
                ? AppColors.whiteColor
                : AppColors.blackColor,
          ),
        ),
        Expanded(
            child: Center(
          child: Text(
            DateFormat('mm').format(DateTime.now()),
            style: GoogleFonts.montserrat(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).brightness == Brightness.dark
                  ? AppColors.whiteColor
                  : AppColors.blackColor,
            ),
          ),
        ))
      ],
    );
  }
}

class IncreaseTimeControlButtons extends StatelessWidget {
  const IncreaseTimeControlButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ControlButtons(
            icon: Icons.keyboard_arrow_up_rounded,
          ),
        ),
        Expanded(
            child: ControlButtons(
          icon: Icons.keyboard_arrow_up_rounded,
        )),
      ],
    );
  }
}

class DecreaseTimeControlButtons extends StatelessWidget {
  const DecreaseTimeControlButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ControlButtons(
            icon: Icons.keyboard_arrow_down_rounded,
          ),
        ),
        Expanded(
            child: ControlButtons(
          icon: Icons.keyboard_arrow_down_rounded,
        )),
      ],
    );
  }
}

class HourAndMinuteText extends StatelessWidget {
  const HourAndMinuteText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Center(
            child: Text(
              AppStringConstants.timeSettingScreenHour,
              style: GoogleFonts.montserrat(
                fontSize: 30,
                color: Theme.of(context).brightness == Brightness.dark
                    ? AppColors.whiteColor
                    : AppColors.blackColor,
              ),
            ),
          ),
        ),
        Expanded(
            child: Center(
          child: Text(
            AppStringConstants.timeSettingScreenMinute,
            style: GoogleFonts.montserrat(
              fontSize: 30,
              color: Theme.of(context).brightness == Brightness.dark
                  ? AppColors.whiteColor
                  : AppColors.blackColor,
            ),
          ),
        ))
      ],
    );
  }
}

class AMPMButtonsRow extends StatelessWidget {
  const AMPMButtonsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(
          flex: 4,
        ),
        Expanded(
          child: AMPMButton(
            isSelected: false,
            text: 'AM',
          ),
        ),
        Expanded(
          child: AMPMButton(
            isSelected: true,
            text: 'PM',
          ),
        ),
        Spacer(
          flex: 4,
        ),
      ],
    );
  }
}

class AMPMButton extends StatelessWidget {
  const AMPMButton({super.key, required this.isSelected, required this.text});
  final bool isSelected;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: isSelected
              ? Theme.of(context).brightness == Brightness.dark
                  ? AppColors.whiteColor
                  : AppColors.blackColor
              : AppColors.greyColor,
        ),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.montserrat(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: isSelected
                  ? Theme.of(context).brightness == Brightness.dark
                      ? AppColors.blackColor
                      : AppColors.whiteColor
                  : AppColors.blackColor,
            ),
          ),
        ),
      ),
    );
  }
}
