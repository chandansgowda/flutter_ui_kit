import 'package:get/get.dart';
import 'package:my_ui_kiy/coffee_app/screens/home_screen.dart';
import 'package:my_ui_kiy/crypto_app/screens/home_screen.dart';
import 'package:my_ui_kiy/furniture_app/screens/home_screen.dart';
import 'package:my_ui_kiy/home.dart';
import 'package:my_ui_kiy/music_app/screens/music_app_home_screen.dart';

class GetRoutes {
  static List<String> screenNames = [
    'homeScreen',
    'Coffee App',
    'Crypto App',
    'Furniture App',
    'Music App',
  ];
  static const home = '/',
      coffeeHome = '/coffeeHome',
      cryptoHome = '/cryptoHome',
      furnitureHome = '/furnitureHome',
      musicHome = '/musicHome';

  static List<GetPage> routes = [
    GetPage(
        name: home, page: () => const HomeScreen(), arguments: 'Home Screen'),
    GetPage(
        name: coffeeHome,
        page: () => const CoffeeAppHomeScreen(),
        arguments: 'Coffee App'),
    GetPage(
        name: cryptoHome,
        page: () => CryptoAppHomeScreen(),
        arguments: 'Crypto App'),
    GetPage(
        name: furnitureHome,
        page: () => FurnitureAppHomeScreen(),
        arguments: 'Furniture App'),
    GetPage(
        name: musicHome,
        page: () => MusicAppHomeScreen(),
        arguments: 'Music App'),
  ];
}
