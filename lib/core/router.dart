import 'package:flutter/material.dart';
import 'package:flutter_starwars/app/domain/model/poke.dart';
import 'package:flutter_starwars/app/presentation/page/choose_side/choose_side.dart';
import 'package:flutter_starwars/app/presentation/page/login/login.dart';
import 'package:flutter_starwars/app/presentation/page/signup/signup.dart';
import 'package:flutter_starwars/app/presentation/page/splash/splash.dart';
import 'package:flutter_starwars/app/presentation/page/starwars_list/starwars_list.dart';
import 'package:flutter_starwars/app/presentation/page/warrior_details/warrior_details.dart';
import 'package:flutter_starwars/core/values/routes.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (_) => Splash());
      case Routes.login:
        return MaterialPageRoute(builder: (_) => Login());
      case Routes.signUp:
        return MaterialPageRoute(builder: (_) => SignUp());
      case Routes.chooseSide:
        return MaterialPageRoute(builder: (_) => ChooseSide());
      case Routes.swList:
        return MaterialPageRoute(builder: (_) => StarWarsList());
      case Routes.details:
        final warrior = settings.arguments as Poke;
        return MaterialPageRoute(
            builder: (_) => WarriorDetails(warrior: warrior));
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('Nenhuma rota definida para ${settings.name}.'),
            ),
          ),
        );
    }
  }
}
