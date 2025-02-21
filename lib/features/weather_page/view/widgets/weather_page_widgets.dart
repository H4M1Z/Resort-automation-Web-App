import 'package:intl/intl.dart';

import '../../../../barrel.dart';


//................MAKE IT RESPONSIVE
class WeatherUpperCard extends StatelessWidget {
  WeatherUpperCard({super.key});

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
    DateTime now = DateTime.now();
    String formattedTime = DateFormat('hh:mm a').format(now);
    String currentDay = now.weekday.toString();
    return Center(
      child: Container(
        width: ScreenSize.getWidth(context) * 0.9,
        height: 300,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.greyColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Row(
                children: [
                  Column(
                    children: [
                      Text(
                        AppStringConstants.settingsScreenSkardu,
                        style: GoogleFonts.montserrat(
                          fontSize: 30,
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
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
                            fontWeight: FontWeight.w600,
                          )),
                      Text(
                        formattedTime,
                        style: GoogleFonts.montserrat(
                          fontSize: 24,
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Hourly Forecast Row
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: forecast.map((data) {
                  return Column(
                    children: [
                      Text(
                        data["time"],
                        style: GoogleFonts.montserrat(
                          fontSize: 20,
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Icon(data["icon"], color: Colors.yellow, size: 40),
                      Text(
                        data["temp"],
                        style: GoogleFonts.montserrat(
                          fontSize: 18,
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
