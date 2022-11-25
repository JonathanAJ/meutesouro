
import 'package:flutter/material.dart';

import '../controller/dashboard_item_controller.dart';

abstract class NewItemAbstractModel {
  String titleItem = "";
  String parentNavigation = "";
  DashboardItemController controller = DashboardItemController();

  DropdownButtonFormField typeItemDropDown(ValueChanged changed);
}
