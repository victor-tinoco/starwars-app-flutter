import 'package:flutter/material.dart';
import 'package:flutter_starwars/core/di/service_locator.dart';

import 'core/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  runApp(StarWarsApp());
}
