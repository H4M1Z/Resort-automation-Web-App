import 'package:resort_web_app/barrel.dart';

class DateHeading extends StatelessWidget {
  const DateHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        AppStringConstants.dateSettingScreenDate,
        style: GoogleFonts.montserrat(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Theme.of(context).textTheme.bodyMedium!.color,
        ),
      ),
    );
  }
}

class CurrentDate extends StatelessWidget {
  const CurrentDate({super.key});

  @override
  Widget build(BuildContext context) {
    final currentDate = DateTime.now();

    return Center(
      child: Text(
        '${getMonth(currentDate.month)} - ${currentDate.day} - ${currentDate.year}',
        style: GoogleFonts.montserrat(
          fontSize: 20,
          color: Theme.of(context).textTheme.bodyMedium!.color,
        ),
      ),
    );
  }

  String getMonth(int month) {
    switch (month) {
      case 1:
        return 'January';
      case 2:
        return 'February';
      case 3:
        return 'March';
      case 4:
        return 'April';
      case 5:
        return 'May';
      case 6:
        return 'June';
      case 7:
        return 'July';
      case 8:
        return 'August';
      case 9:
        return 'September';
      case 10:
        return 'October';
      case 11:
        return 'November';
      case 12:
        return 'December';
      default:
        return '';
    }
  }
}

class IncreaseDateButtons extends StatelessWidget {
  const IncreaseDateButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(),
        Expanded(
          child: ControlButtons(icon: Icons.keyboard_arrow_up_rounded),
        ),
        Expanded(
          child: ControlButtons(icon: Icons.keyboard_arrow_up_rounded),
        ),
        Expanded(
          child: ControlButtons(icon: Icons.keyboard_arrow_up_rounded),
        ),
        Spacer(),
      ],
    );
  }
}

class DateNumbers extends StatelessWidget {
  const DateNumbers({super.key});

  @override
  Widget build(BuildContext context) {
    final dateAndTime = DateTime.now();
    return Row(
      children: [
        Spacer(),
        Expanded(
          child: Center(
            child: Text(
              dateAndTime.month.toString(),
              style: GoogleFonts.montserrat(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).textTheme.bodyMedium!.color,
              ),
            ),
          ),
        ),
        Expanded(
          child: Center(
            child: Text(
              dateAndTime.day.toString(),
              style: GoogleFonts.montserrat(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).textTheme.bodyMedium!.color,
              ),
            ),
          ),
        ),
        Expanded(
          child: Center(
            child: Text(
              dateAndTime.year.toString(),
              style: GoogleFonts.montserrat(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).textTheme.bodyMedium!.color,
              ),
            ),
          ),
        ),
        Spacer(),
      ],
    );
  }
}

class DateTexts extends StatelessWidget {
  const DateTexts({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(),
        Expanded(
          child: Center(
            child: Text(
              AppStringConstants.dateSettingScreenMonth,
              style: GoogleFonts.montserrat(
                fontSize: 28,
                color: Theme.of(context).textTheme.bodyMedium!.color,
              ),
            ),
          ),
        ),
        Expanded(
          child: Center(
            child: Text(
              AppStringConstants.dateSettingScreenSmallDate,
              style: GoogleFonts.montserrat(
                fontSize: 28,
                color: Theme.of(context).textTheme.bodyMedium!.color,
              ),
            ),
          ),
        ),
        Expanded(
          child: Center(
            child: Text(
              AppStringConstants.dateSettingScreenYear,
              style: GoogleFonts.montserrat(
                fontSize: 28,
                color: Theme.of(context).textTheme.bodyMedium!.color,
              ),
            ),
          ),
        ),
        Spacer(),
      ],
    );
  }
}

class DecreaseDateButtons extends StatelessWidget {
  const DecreaseDateButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(),
        Expanded(
          child: ControlButtons(icon: Icons.keyboard_arrow_down_rounded),
        ),
        Expanded(
          child: ControlButtons(icon: Icons.keyboard_arrow_down_rounded),
        ),
        Expanded(
          child: ControlButtons(icon: Icons.keyboard_arrow_down_rounded),
        ),
        Spacer(),
      ],
    );
  }
}
