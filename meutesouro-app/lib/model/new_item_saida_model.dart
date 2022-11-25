
import 'package:flutter/material.dart';

import '../controller/dashboard_item_controller.dart';
import 'new_item_abstract_model.dart';

class NewItemSaidaModel implements NewItemAbstractModel {

  @override
  DashboardItemController controller = DashboardItemController();

  @override
  String parentNavigation = "/saidas";

  @override
  String titleItem = "Saída";

  @override
  DropdownButtonFormField typeItemDropDown(ValueChanged changed) {
    return DropdownButtonFormField(
      value: "Selecione",
      items: const [
        DropdownMenuItem(
          value: "Selecione",
          child: Text("Selecione o Tipo de Saída"),
        ),
        DropdownMenuItem(
          value: "Supermercado",
          child: Text("Supermercado"),
        ),
        DropdownMenuItem(
          value: "Educação",
          child: Text("Educação"),
        ),
        DropdownMenuItem(
          value: "Transporte",
          child: Text("Transporte"),
        ),
        DropdownMenuItem(
          value: "Saude",
          child: Text("Saude"),
        ),
      ],
      onChanged: changed,
    );
  }
}
