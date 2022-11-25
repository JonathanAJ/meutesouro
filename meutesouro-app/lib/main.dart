import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:flutter/material.dart';
import 'package:meutesouro/config/instances.dart';
import 'package:meutesouro/config/routes.dart';

void main() {
  usePathUrlStrategy();

  WidgetsFlutterBinding.ensureInitialized();
  AppInstances.initInstances();
  runApp(AppMain());
}

class AppMain extends StatelessWidget {
  const AppMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Meu Tesouro',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      routerConfig: AppRoutes.initRoutes(),
    );
  }
}
