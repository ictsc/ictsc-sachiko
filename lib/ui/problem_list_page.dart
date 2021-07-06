import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ictsc_sachiko/model/problem_list_page_state.dart';
import 'package:ictsc_sachiko/router/app_router.gr.dart';
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
    final notifier = useProvider(problemListProvider.notifier);

    final dataRows = state.problems.map((problem) {
      return DataRow(
        cells: <DataCell>[
          DataCell(Text(problem.code)),
          if (problem.title.isNotEmpty)
            DataCell(Text(problem.title))
          else
            DataCell(Text(
              '<none>',
              style: Theme.of(context).textTheme.caption,
            )),
          DataCell(Text(problem.id)),
          DataCell(Text('${problem.point}pt')),
          DataCell(Text('${problem.solvedCriterion}pt')),
          // 問題文
          DataCell(SizedBox(
              width: 512,
              child: Text(
                problem.body.replaceAll('\n', '　'),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ))),
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
                    context.router.push(const CreateProblemRoute());
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
          Scrollbar(
            isAlwaysShown: true,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(columns: [
                const DataColumn(label: Text('CODE')),
                const DataColumn(label: Text('タイトル')),
                const DataColumn(label: Text('ID')),
                const DataColumn(label: Text('ポイント'), numeric: true),
                const DataColumn(label: Text('解決基準ポイント'), numeric: true),
                const DataColumn(label: Text('問題文')),
              ], rows: dataRows),
            ),
          ),
        ],
      ),
    );
  }
}
