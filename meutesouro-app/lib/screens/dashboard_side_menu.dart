import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class DashboardSideMenu extends StatelessWidget {
  const DashboardSideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            child: Icon(Icons.attach_money),
          ),
          ListTile(
            trailing: const Icon(Icons.arrow_forward_ios),
            title: const Text('ENTRADAS'),
            onTap: () {
              context.go("/entradas");
            },
          ),
          ListTile(
            trailing: const Icon(Icons.arrow_forward_ios),
            title: const Text('SAÍDAS'),
            onTap: () {
              context.go("/saidas");
            },
          ),
          ListTile(
            trailing: const Icon(Icons.arrow_forward_ios),
            title: const Text('RELATÓRIOS'),
            onTap: () {
              context.go("/relatorios");
            },
          ),
        ],
      ),
    );
  }
}
