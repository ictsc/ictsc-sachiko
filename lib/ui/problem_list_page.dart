import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ictsc_sachiko/model/problem_list_page_state.dart';
import 'package:ictsc_sachiko/ui/common/header.dart';
import 'package:ictsc_sachiko/view_model/problem_list_page_state_notifier.dart';

final problemListProvider = StateNotifierProvider.autoDispose<
    ProblemListPageStateNotifier, ProblemListPageState>(
  (ref) => ProblemListPageStateNotifier(const ProblemListPageState(), ref),
);

class ProblemListPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final state = useProvider(problemListProvider);

    final dataRows = state.problems.map((problem) {
      return DataRow(
        cells: <DataCell>[
          DataCell(DataText(problem.code)),
          if (problem.title.isNotEmpty)
            DataCell(DataText(problem.title))
          else
            const DataCell(DataText('<none>')),
          DataCell(DataText(problem.id)),
          DataCell(DataText('${problem.point}pt')),
          DataCell(DataText('${problem.solvedCriterion}pt')),
          // 問題文
          DataCell(SizedBox(
              width: 512,
              child: DataText(
                problem.body.replaceAll('\n', '　'),
                textOverflow: TextOverflow.ellipsis,
                maxLines: 1,
              ))),
          DataCell(DataText('${problem.updatedAt}')),
          DataCell(DataText('${problem.createdAt}')),
          DataCell(IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {},
          )),
          DataCell(IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () {},
          )),
        ],
      );
    }).toList();

    return Scaffold(
      appBar: Header(
        appBar: AppBar(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Gap(8),
          Row(
            children: [
              const Gap(24),
              Text(
                '問題の管理',
                style: Theme.of(context).textTheme.headline6,
              ),
              const Gap(48),
              TextButton(
                  onPressed: () {
                    context.router.pushNamed('/manage/problems/edit/new');
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.add_box,
                        size: Theme.of(context).textTheme.subtitle1!.fontSize,
                      ),
                      const Gap(2),
                      const Text('問題の作成'),
                    ],
                  ))
            ],
          ),
          if (!state.isLoading)
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                columns: [
                  const DataColumn(label: HeadingText('コード')),
                  const DataColumn(label: HeadingText('タイトル')),
                  const DataColumn(label: HeadingText('ID')),
                  const DataColumn(label: HeadingText('ポイント'), numeric: true),
                  const DataColumn(
                      label: HeadingText('解決基準ポイント'), numeric: true),
                  const DataColumn(label: HeadingText('問題文')),
                  const DataColumn(label: HeadingText('更新日')),
                  const DataColumn(label: HeadingText('作成日')),
                  const DataColumn(label: HeadingText('編集')),
                  const DataColumn(label: HeadingText('削除')),
                ],
                rows: dataRows,
                dataRowHeight: 40,
                headingRowHeight: 40,
              ),
            )
          else
            const Expanded(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
        ],
      ),
    );
  }
}

/// データテーブルのヘッダーテキスト
class HeadingText extends StatelessWidget {
  final String text;

  const HeadingText(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: Theme.of(context)
            .textTheme
            .caption!
            .copyWith(color: Theme.of(context).textTheme.bodyText2?.color));
  }
}

/// データテーブルのデータテキスト
class DataText extends StatelessWidget {
  final String text;
  final TextOverflow? textOverflow;
  final int? maxLines;

  const DataText(this.text, {this.textOverflow, this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.caption,
      overflow: textOverflow,
      maxLines: maxLines,
    );
  }
}
