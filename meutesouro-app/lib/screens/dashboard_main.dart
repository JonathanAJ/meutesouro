import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pluto_grid/pluto_grid.dart';

import '../controller/dashboard_item_controller.dart';
import '../model/new_item_abstract_model.dart';

class DashboardMain extends StatelessWidget {
  PlutoGridStateManager? gridStateManager;

  final NewItemAbstractModel novoItem;
  final DashboardItemController controller;

  DashboardMain(this.novoItem, {super.key}) : controller = novoItem.controller;

  List<PlutoColumn> get _columns {
    return [
      PlutoColumn(
        title: 'TIPO',
        field: 'tipo',
        enableEditingMode: false,
        type: PlutoColumnType.text(),
      ),
      PlutoColumn(
        title: 'RESPONSÁVEL',
        field: 'responsavel',
        enableEditingMode: false,
        type: PlutoColumnType.text(),
      ),
      PlutoColumn(
        title: 'DATA',
        field: 'data',
        enableEditingMode: false,
        type: PlutoColumnType.date(format: "dd/MM/yyyy"),
      ),
      PlutoColumn(
        title: 'DESCRIÇÃO',
        field: 'descricao',
        enableEditingMode: false,
        type: PlutoColumnType.text(),
      ),
      PlutoColumn(
        title: 'VALOR',
        field: 'valor',
        enableEditingMode: false,
        type: PlutoColumnType.currency(locale: "pt-br"),
      ),
    ];
  }

  List<PlutoRow> get _rows => [];

  _updateContent() {
    print("Update Content Grid: ${gridStateManager ?? false}");
    gridStateManager?.removeAllRows();
    gridStateManager?.insertRows(
      0,
      controller.getListItemNotifier().value.map(
            (entrada) {
          return PlutoRow(
            cells: {
              'tipo': PlutoCell(value: entrada.tipo),
              'responsavel': PlutoCell(value: entrada.responsavel),
              'data': PlutoCell(value: entrada.data),
              'descricao': PlutoCell(value: entrada.descricao),
              'valor': PlutoCell(value: entrada.valor),
            },
          );
        },
      ).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Minhas ${novoItem.titleItem}s",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          ValueListenableBuilder(
            valueListenable: controller.getListItemNotifier(),
            builder: (context, value, child) {
              _updateContent();
              return Expanded(
                child: PlutoGrid(
                  onLoaded: (event) {
                    gridStateManager = event.stateManager;
                    _updateContent();
                  },
                  configuration: PlutoGridConfiguration(
                    columnSize: PlutoGridColumnSizeConfig(
                      autoSizeMode: PlutoAutoSizeMode.equal,
                    ),
                    style: PlutoGridStyleConfig(
                      enableGridBorderShadow: false,
                    ),
                  ),
                  columns: _columns,
                  rows: _rows,
                ),
              );
            },
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    String path = "${novoItem.parentNavigation}/nova";
                    context.go(path);
                  },
                  child: Text("Adicionar Nova ${novoItem.titleItem}"),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
