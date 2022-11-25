import 'package:flutter/material.dart';

import '../model/item_model.dart';

class DashboardItemController {
  late final ValueNotifier<List<ItemModel>> _listNotifier = ValueNotifier([]);

  ValueNotifier<List<ItemModel>> getListItemNotifier() {
    return _listNotifier;
  }

  void addItem(ItemModel item) {
    _listNotifier.value.add(item);
  }
}
