import 'package:intl/intl.dart';

import '../../../../barrel.dart';

//................MAKE IT RESPONSIVE
class WeatherUpperCard extends StatelessWidget {
  const WeatherUpperCard({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    final String formattedTime = DateFormat('hh:mm a').format(now);
    final String currentDay = now.weekday.toString();
    return Center(
      child: Container(
        width: ScreenSize.getWidth(context) * 0.9,
        height: 300,
        decoration: BoxDecoration(
          color: AppColors.greyColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: LocationWidget(),
                          ),
                          Expanded(
                            child: DayWidget(
                              currentDay: currentDay,
                            ),
                          ),
                          Expanded(
                            child: TimeWidget(
                              time: formattedTime,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: CurrentWeatherImage(),
                    ),
                    Expanded(
                        child: Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        AppStringConstants.homeScreenCelcius,
                        style: GoogleFonts.montserrat(
                          fontSize: 50,
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ))
                  ],
                ),
              ),

              // Hourly Forecast Row
              Expanded(
                child: ForecastRow(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class LocationWidget extends StatelessWidget {
  const LocationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppStringConstants.settingsScreenSkardu,
      style: GoogleFonts.montserrat(
        fontSize: 35,
        color: AppColors.blackColor,
        fontWeight: FontWeight.w800,
      ),
    );
  }
}

class DayWidget extends StatelessWidget {
  const DayWidget({super.key, required this.currentDay});
  final String currentDay;
  @override
  Widget build(BuildContext context) {
    return Text(
      switch (currentDay) {
        '1' => 'Monday',
        '2' => 'Tuesday',
        '3' => 'Wednesday',
        '4' => 'Thursday',
        '5' => 'Friday',
        '6' => 'Saturday',
        _ => 'Sunday'
      },
      style: GoogleFonts.montserrat(
        fontSize: 28,
        color: AppColors.blackColor,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

class TimeWidget extends StatelessWidget {
  const TimeWidget({super.key, required this.time});
  final String time;
  @override
  Widget build(BuildContext context) {
    return Text(
      time,
      style: GoogleFonts.montserrat(
        fontSize: 25,
        color: AppColors.blackColor,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

class CurrentWeatherImage extends StatelessWidget {
  const CurrentWeatherImage({super.key});
  static const sunImage = 'assets/images/Sun.png';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        width: 80,
        height: 100,
        sunImage,
      ),
    );
  }
}

class ForecastRow extends StatelessWidget {
  ForecastRow({super.key});
  final List<Map<String, dynamic>> forecast = [
    {"time": "3:00am", "icon": Icons.wb_sunny, "temp": "23°C"},
    {"time": "6:00am", "icon": Icons.wb_sunny, "temp": "22°C"},
    {"time": "09:00am", "icon": Icons.cloud, "temp": "23°C"},
    {"time": "12:00pm", "icon": Icons.thunderstorm, "temp": "19°C"},
    {"time": "3:00pm", "icon": Icons.wb_sunny, "temp": "15°C"},
    {"time": "6:00pm", "icon": Icons.cloud, "temp": "12°C"},
    {"time": "9:00pm", "icon": Icons.cloudy_snowing, "temp": "11°C"},
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: forecast.map((data) {
        return Expanded(
          child: Column(
            children: [
              Expanded(
                child: Text(
                  data["time"],
                  style: GoogleFonts.montserrat(
                    fontSize: 20,
                    color: AppColors.blackColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Expanded(
                child: Icon(
                  data["icon"],
                  color: Colors.yellow,
                  size: 40,
                ),
              ),
              Expanded(
                flex: 2,
                child: Center(
                  child: Text(
                    data["temp"],
                    style: GoogleFonts.montserrat(
                      fontSize: 18,
                      color: AppColors.blackColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}

class WeatherLowerCard extends StatelessWidget {
  const WeatherLowerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 30,
              ),
              child: AppBackButton(),
            ),
          ),
        ),
        Expanded(
          flex: 9,
          child: Center(
            child: Container(
              width: ScreenSize.getWidth(context) * 0.7,
              height: 300,
              decoration: BoxDecoration(
                color: AppColors.greyColor,
                borderRadius: BorderRadius.circular(16),
              ),
              child: DayWiseWeatherRow(),
            ),
          ),
        ),
        Spacer()
      ],
    );
  }
}

class DayWiseWeatherRow extends StatelessWidget {
  DayWiseWeatherRow({super.key});

  final List<Map<String, dynamic>> forecast = [
    {"day": "Monday", "icon": Icons.wb_sunny, "temp": "23°C"},
    {"day": "Tuesday", "icon": Icons.wb_sunny, "temp": "22°C"},
    {"day": "Wednesday", "icon": Icons.cloud, "temp": "23°C"},
    {"day": "Thursday", "icon": Icons.thunderstorm, "temp": "19°C"},
    {"day": "Friday", "icon": Icons.wb_sunny, "temp": "15°C"},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: forecast.map((data) {
          return Expanded(
            child: Column(
              children: [
                Spacer(),
                Expanded(
                  child: Text(
                    data["day"],
                    style: GoogleFonts.montserrat(
                      fontSize: 28,
                      color: AppColors.blackColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Expanded(
                  child: Icon(
                    data["icon"],
                    color: Colors.yellow,
                    size: 50,
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      data["temp"],
                      style: GoogleFonts.montserrat(
                        fontSize: 20,
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                Spacer(),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
