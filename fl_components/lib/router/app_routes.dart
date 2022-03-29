
import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';

class AppRoutes{

  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[

    MenuOption(route: 'listview1', icon: Icons.list_sharp, name: 'List View 1', screen: const Listview1Screen()),
    MenuOption(route: 'listview2', icon: Icons.list_alt, name: 'List View 2', screen: const Listview2Screen()),
    MenuOption(route: 'alert', icon: Icons.add_alert_outlined, name: 'Alert', screen: const AlertScreen()),
    MenuOption(route: 'card', icon: Icons.card_giftcard, name: 'Card', screen: const CardScreen()),
    MenuOption(route: 'avatar', icon: Icons.supervised_user_circle, name: 'Circle Avatar', screen: const AvatarScreen()),
    MenuOption(route: 'animated', icon: Icons.play_circle_outline_rounded, name: 'Animated Container', screen: const AnimatedScreen()),
    MenuOption(route: 'input', icon: Icons.input_rounded, name: 'Inputs', screen: const InputsScreen()),
    MenuOption(route: 'slider', icon: Icons.slideshow_rounded, name: 'Slider & Checks', screen: const SliderScreen()),
    MenuOption(route: 'listviewbuilder', icon: Icons.list_outlined, name: 'Infinite Scroll', screen: const ListviewBuilderScreen()),
  ];


  static Map<String, Widget Function(BuildContext)> getAppRoutes() {

    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home' : (BuildContext context ) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route :(BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home'      :(BuildContext context) => const HomeScreen(),
  //   'listview1' :(BuildContext context) => const Listview1Screen(),
  //   'listview2' :(BuildContext context) => const Listview2Screen(),
  //   'alert'     :(BuildContext context) => const AlertScreen(),
  //   'card'      :(BuildContext context) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoutes (RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen()
    );
  }
}