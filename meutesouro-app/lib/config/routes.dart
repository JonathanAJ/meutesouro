import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import '../model/new_item_entrada_model.dart';
import '../model/new_item_saida_model.dart';
import '../screens/dashboard_app.dart';
import '../screens/dashboard_main.dart';
import '../screens/dashboard_report.dart';
import '../screens/form_add_new_item.dart';

class AppRoutes {
  static initRoutes() {
    return GoRouter(
      initialLocation: "/entradas",
      debugLogDiagnostics: true,
      routes: [
        ShellRoute(
          builder: (context, state, widget) => DashboardApp(
            childRoute: widget,
          ),
          routes: [
            GoRoute(
              path: "/entradas",
              builder: (context, state) =>
                  DashboardMain(GetIt.I<NewItemEntradaModel>()),
            ),
            GoRoute(
              path: "/entradas/nova",
              builder: (context, state) =>
                  FormAddNewItem(GetIt.I<NewItemEntradaModel>()),
            ),
            GoRoute(
              path: "/saidas",
              builder: (context, state) =>
                  DashboardMain(GetIt.I<NewItemSaidaModel>()),
            ),
            GoRoute(
              path: "/saidas/nova",
              builder: (context, state) =>
                  FormAddNewItem(GetIt.I<NewItemSaidaModel>()),
            ),
            GoRoute(
              path: "/relatorios",
              builder: (context, state) => DashboardReport(),
            ),
          ],
        ),
      ],
    );
  }
}
