import '../../barrel.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: AppColors.whiteColor,
  iconTheme: IconThemeData(color: AppColors.blackColor),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: AppColors.blackColor,
  iconTheme: IconThemeData(color: AppColors.whiteColor),
);
