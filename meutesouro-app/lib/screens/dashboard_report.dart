
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DashboardReport extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            _cardItem("TOTAL ENTRADAS", "R\$ 1.189,01"),
            _cardItem("TOTAL SAÍDAS", "R\$ 0.000,00"),
            _cardItem("SALDO TOTAL", "R\$ 1.189,01"),
          ],
        ),
        Center(child: SfCartesianChart())
      ],
    );
  }

  _cardItem(String title, String money) {
    return Expanded(
      child: Card(
        margin: EdgeInsets.all(16),
        child: Container(
          padding: EdgeInsets.all(32),
          child: Column(
            children: [
              Text(
                title.toUpperCase(),
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                money,
                style: TextStyle(
                  fontSize: 31,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
