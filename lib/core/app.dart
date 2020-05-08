import 'package:flutter/material.dart';
import 'package:flutter_starwars/core/router.dart';
import 'package:flutter_starwars/core/values/routes.dart';
import 'values/strings.dart';

class StarWarsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: APP_NAME,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      onGenerateRoute: Router.generateRoute,
      initialRoute: Routes.splash,
    );
  }
}
