import 'package:flutter/material.dart';
import '../controller/dashboard_item_controller.dart';
import 'new_item_abstract_model.dart';

class NewItemEntradaModel implements NewItemAbstractModel {

  @override
  DashboardItemController controller = DashboardItemController();

  @override
  String parentNavigation = "/entradas";

  @override
  String titleItem = "Entrada";

  @override
  DropdownButtonFormField typeItemDropDown(ValueChanged changed) {
    return DropdownButtonFormField(
      value: "Selecione",
      items: const [
        DropdownMenuItem(
          value: "Selecione",
          child: Text("Selecione o Tipo de Entrada"),
        ),
        DropdownMenuItem(
          value: "Salário",
          child: Text("Salário"),
        ),
        DropdownMenuItem(
          value: "Bônus",
          child: Text("Bônus"),
        ),
        DropdownMenuItem(
          value: "Investimento",
          child: Text("Investimento"),
        ),
        DropdownMenuItem(
          value: "Renda Extra",
          child: Text("Renda Extra"),
        ),
      ],
      onChanged: changed,
    );
  }

}

