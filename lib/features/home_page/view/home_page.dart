import '../../../barrel.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //............INFOOR/OUTDOOR WEATHER AND LOGO
          Expanded(
            flex: 3,
            child: HomePageTopDesign(),
          ),
          //............. TIME WIDGET
          Expanded(
            child: HomePageTimeWidget(),
          ),
          //................. DAY WIDGET
          Expanded(
            child: HomePageDayWidget(),
          ),
          //...............DATE WIDGET
          Expanded(
            child: HomePageDateWidget(),
          ),
          //.................BOTTOM NAV BAR
          Expanded(
            child: HomePageBottomNavBar(),
          )
        ],
      ),
    );
  }
}
