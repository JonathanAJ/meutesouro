
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../model/item_model.dart';
import '../model/new_item_abstract_model.dart';

class FormAddNewItem extends StatelessWidget {
  final keyForm = GlobalKey<FormState>();
  final itemModel = ItemModel();

  final NewItemAbstractModel novoItem;

  FormAddNewItem(this.novoItem);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [
              BackButton(onPressed: () {
                context.go(novoItem.parentNavigation);
              }),
              SizedBox(
                width: 16,
              ),
              Text(
                "Adicionar ${novoItem.titleItem}",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Form(
            key: keyForm,
            child: Column(
              children: [
                novoItem.typeItemDropDown((value) => itemModel.tipo = value),
                TextFormField(
                  onChanged: (value) => itemModel.responsavel = value,
                  decoration: InputDecoration(hintText: "Responsável"),
                ),
                TextFormField(
                  onChanged: (value) => itemModel.data = value,
                  decoration: InputDecoration(hintText: "Data"),
                ),
                TextFormField(
                  onChanged: (value) => itemModel.valor = value,
                  decoration: InputDecoration(hintText: "Valor"),
                ),
                TextFormField(
                  onChanged: (value) => itemModel.descricao = value,
                  decoration: InputDecoration(hintText: "Descrição"),
                )
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          ElevatedButton(
            onPressed: () {
              novoItem.controller.addItem(itemModel);
              keyForm.currentState?.reset();
              context.go(novoItem.parentNavigation);
            },
            child: Text("Adicionar ${novoItem.titleItem}"),
          ),
        ],
      ),
    );
  }
}
