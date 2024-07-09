import 'package:flutter/material.dart';
import 'package:toonflix/widgets/preview_source_widget.dart';

class DataTableWidget extends StatelessWidget {
  const DataTableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      initialIndex: 0, // 初期選択タブ
      length: 2, // タブの数
      child: PreviewSourceWidget(
        title: 'DataTable',
        imgPath: 'images/ui/UiDataTable.png',
        source: '''
    return Scaffold(
      appBar: AppBar(
        title: const Text('DataTable'),
      ),
      body: Center(
        child: DataTable(
          columns: const [
            DataColumn(
              label: Text('Name', style: TextStyle(
                fontStyle: FontStyle.italic),),),
            DataColumn(
              label: Text('Age', style: TextStyle(
                fontStyle: FontStyle.italic),),),
          ],
          rows: const [
            DataRow(cells: [
                DataCell(Text('Smith')),
                DataCell(Text('29')),
            ],),
            DataRow(cells: [
                DataCell(Text('Emily')),
                DataCell(Text('20')),
            ],),
          ],
        ),
      ),
    ); ''',
        hSize: 580,
        wSize: 350,
      ),
    );
  }
}
