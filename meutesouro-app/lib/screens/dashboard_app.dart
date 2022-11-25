import 'package:flutter/material.dart';

import 'dashboard_side_menu.dart';

class DashboardApp extends StatelessWidget {
  final Widget childRoute;

  DashboardApp({
    required this.childRoute,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meu Tesouro'),
      ),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: DashboardSideMenu(),
            ),
            Expanded(
              flex: 5,
              child: childRoute,
            ),
          ],
        ),
      ),
      drawer: DashboardSideMenu(),
    );
  }
}