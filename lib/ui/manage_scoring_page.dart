import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:ictsc_sachiko/ui/common/header.dart';

@Deprecated('')
class ManageScoringPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final dataRows = [
      const DataRow(cells: [
        DataCell(Icon(
          Icons.check,
          color: Colors.green,
        )),
        DataCell(Text('2018-01-27 06:54:33')),
        DataCell(
            Text('問題文問題文問題文問題文問題文問題文問題文問題文問題文問題文問題文問題文問題文問題文問題文問題文問題文問題文')),
        DataCell(Text('Aチーム')),
        DataCell(Text('0')),
        // DataCell(SizedBox(
        //   width: MediaQuery.of(context).size.width / 4,
        //   child: Text(
        //     'adsfjk;adfjkl;sadfkjl;sadfkjkl;sadfjkl;sdfkjlk;asdfjkl;asdfkjkladfjkl;adsfjkl;asdfjkl;asdfjkl;dsfkjk;sdfkjkl;asdfkjkl;sadfkjk;sadfkjk;sadfkjl;',
        //     //.replaceAll('\n', '　'),
        //     overflow: TextOverflow.ellipsis,
        //     maxLines: 1,
        //   ),
        // )),
        DataCell(Text(
          '詳細',
          style: TextStyle(color: Colors.blue),
        )),
      ]),
    ];

    return Scaffold(
      appBar: Header(
        appBar: AppBar(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Gap(16),
          Row(
            children: [
              const Gap(24),
              Text(
                '問題の管理',
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: SizedBox(
              height: 256,
              child: DataTable(
                columns: [
                  const DataColumn(label: Center(child: Text('状態'))),
                  const DataColumn(label: Center(child: Text('提出日時'))),
                  const DataColumn(label: Center(child: Text('問題'))),
                  const DataColumn(label: Center(child: Text('チーム'))),
                  const DataColumn(
                      label: Center(child: Text('得点')), numeric: true),
                  // const DataColumn(label: Center(child: Text('内容'))),
                  const DataColumn(label: Center(child: Text(''))),
                ],
                rows: dataRows,
                dataRowHeight: 40,
                headingRowHeight: 40,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
