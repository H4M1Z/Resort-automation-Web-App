import 'package:intl/intl.dart';
import 'package:resort_web_app/config/screen_size.dart';

import '../../../../barrel.dart';

class HomePageTopDesign extends StatelessWidget {
  const HomePageTopDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Column(
            children: [
              //..........CELCIUS
              Expanded(
                child: CelciusText(),
              ),

              //............. HOME ICON
              Expanded(
                child: Column(children: [
                  Expanded(
                    flex: 2,
                    child: HomeIcon(),
                  ),
                  //............INDOOR TEXT
                  Expanded(
                    flex: 1,
                    child: Text(
                      AppStringConstants.homeScreenIndoor,
                      style: GoogleFonts.montserrat(
                        fontSize: 20,
                        color: Theme.of(context).textTheme.bodySmall!.color,
                      ),
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
        //....................... COMPANY  LOGO
        Expanded(
          flex: 2,
          child: CompanyLogo(),
        ),
        //....................
        Expanded(
          child: Column(
            children: [
              //.................CELCIUS TEXT
              Expanded(child: CelciusText()),

              Expanded(child: WeatherImage())
            ],
          ),
        )
      ],
    );
  }
}

class CelciusText extends StatelessWidget {
  const CelciusText({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Text(
        AppStringConstants.homeScreenCelcius,
        style: GoogleFonts.montserrat(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).textTheme.bodyLarge!.color),
      ),
    );
  }
}

class HomeIcon extends StatelessWidget {
  const HomeIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Icon(
        Icons.home_filled,
        color: Theme.of(context).iconTheme.color,
        size: 55,
      ),
    );
  }
}

class CompanyLogo extends StatelessWidget {
  const CompanyLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Center(
          child: SizedBox(
            width: constraints.maxWidth * 0.5,
            height: constraints.maxHeight * 0.5,
            child: Image.asset(
              'assets/images/khar_logo_dark.png',
              fit: BoxFit.fill,
            ),
          ),
        );
      },
    );
  }
}

class WeatherImage extends StatelessWidget {
  const WeatherImage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Align(
            alignment: Alignment(0, -0.5),
            child: SizedBox(
              width: constraints.maxWidth * 0.25,
              height: constraints.maxHeight * 0.5,
              child: Image.asset(
                'assets/images/weather.png',
                fit: BoxFit.fill,
              ),
            ),
          );
        },
      ),
    );
  }
}

//...............................TIME WIDGET

class HomePageTimeWidget extends StatelessWidget {
  const HomePageTimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedTime = DateFormat('hh:mm a').format(now);
    return Center(
      child: Text(
        formattedTime,
        style: GoogleFonts.hubballi(
          fontSize: 60,
          fontWeight: FontWeight.w400,
          color: Theme.of(context).textTheme.bodyLarge!.color,
        ),
      ),
    );
  }
}

//......................DAY WIDGET
class HomePageDayWidget extends StatelessWidget {
  const HomePageDayWidget({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String currentDay = now.weekday.toString();
    return Center(
      child: Text(
        switch (currentDay) {
          '1' => 'Monday',
          '2' => 'Tuesday',
          '3' => 'Wednesday',
          '4' => 'Thursday',
          '5' => 'Friday',
          '6' => 'Saturday',
          _ => 'Sunday'
        },
        style: GoogleFonts.aboreto(
          fontSize: 50,
          fontWeight: FontWeight.w400,
          color: Theme.of(context).textTheme.bodyLarge!.color,
        ),
      ),
    );
  }
}

//....................... DATE WIDGET
class HomePageDateWidget extends StatelessWidget {
  const HomePageDateWidget({super.key});

  String getFormattedDate() {
    DateTime now = DateTime.now();
    String day = now.day.toString();
    String month = DateFormat('MMM').format(now).toUpperCase(); // OCT
    String year = now.year.toString();

    // Convert day number to ordinal (1ST, 2ND, 3RD, 4TH, etc.)
    String suffix = getDaySuffix(now.day);

    return "$day$suffix $month, $year";
  }

  String getDaySuffix(int day) {
    if (day >= 11 && day <= 13) {
      return "TH"; // Special case for 11th, 12th, 13th
    }
    switch (day % 10) {
      case 1:
        return "ST";
      case 2:
        return "ND";
      case 3:
        return "RD";
      default:
        return "TH";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        getFormattedDate(),
        style: GoogleFonts.aboreto(
          fontSize: 50,
          fontWeight: FontWeight.w400,
          color: Theme.of(context).textTheme.bodyLarge!.color,
        ),
      ),
    );
  }
}

class HomePageBottomNavBar extends StatelessWidget {
  const HomePageBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: double.maxFinite,
        width: ScreenSize.getWidth(context) * 0.9,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BottomNavItem(
              imagePath: 'assets/images/settings_icon.png',
              text: AppStringConstants.homeScreenSettings,
            ),
            BottomNavItem(
              imagePath: 'assets/images/laundry_icon.png',
              text: AppStringConstants.homeScreenLaundry,
            ),
            BottomNavItem(
              imagePath: 'assets/images/control_home_icon.png',
              text: AppStringConstants.homeScreenControls,
            ),
            BottomNavItem(
              imagePath: 'assets/images/cleaning_icon.png',
              text: AppStringConstants.homeScreenCleaning,
            ),
            BottomNavItem(
              imagePath: 'assets/images/donot_disturb.png',
              text: AppStringConstants.homeScreenDontDisturb,
            ),
          ],
        ),
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  const BottomNavItem({super.key, required this.imagePath, required this.text});
  final String imagePath;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Expanded(
          child: Center(
            child: Image.asset(
              width: 50,
              height: 50,
              imagePath,
              color: AppColors.blackColor,
            ),
          ),
        ),
        Expanded(
          child: Center(
            child: Text(
              text,
              style: GoogleFonts.montserrat(
                fontSize: 15,
                color: AppColors.blackColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
