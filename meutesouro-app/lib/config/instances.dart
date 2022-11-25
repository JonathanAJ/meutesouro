import 'package:get_it/get_it.dart';

import '../model/new_item_entrada_model.dart';
import '../model/new_item_saida_model.dart';

class AppInstances {
  static initInstances() {
    GetIt.I.registerSingleton<NewItemEntradaModel>(
      NewItemEntradaModel(),
    );
    GetIt.I.registerSingleton<NewItemSaidaModel>(
      NewItemSaidaModel(),
    );
  }
}
