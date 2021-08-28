
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ictsc_sachiko/domain/problem.dart';
import 'package:ictsc_sachiko/router/app_router.gr.dart';
import 'package:ictsc_sachiko/ui/common/header.dart';
import 'package:ictsc_sachiko/ui/common/markdown_preview.dart';
import 'package:ictsc_sachiko/ui/problem_list_page.dart';
import 'package:ictsc_sachiko/view_model/problem_list_page_state_notifier.dart';

class ManageProblemListPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final state = useProvider(problemListProvider);
    final notifier = useProvider(problemListProvider.notifier);
    final _scrollController = useScrollController();
    final _previewScrollController = useScrollController();

    final dataRows = state.problems.map((problem) {
      return DataRow(
        onSelectChanged: (_) {
          notifier.onSelectProblem(problem.id);
        },
        cells: <DataCell>[
          DataCell(IconButton(
            icon: const Icon(Icons.check),
            onPressed: () {
              AutoRouter.of(context).pushNamed(
                '/manage/problems/${problem.id}/answers',
              );
            },
          )),
          DataCell(Text.rich(TextSpan(text: '', children: [
            TextSpan(
                text: '${problem.unchecked ?? ''}',
                style: Theme.of(context).textTheme.caption),
            TextSpan(
              text: ' / ',
              style: Theme.of(context).textTheme.caption,
            ),
            TextSpan(
              text: '${problem.uncheckedNearOverdue ?? ''}',
              style: Theme.of(context).textTheme.caption?.copyWith(
                    color: Colors.amber,
                  ),
            ),
            TextSpan(
              text: ' / ',
              style: Theme.of(context).textTheme.caption,
            ),
            TextSpan(
              text: '${problem.unchecked ?? ''}',
              style: Theme.of(context).textTheme.caption?.copyWith(
                    color: Theme.of(context).errorColor,
                  ),
            )
          ]))),
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
            onPressed: () {
              AutoRouter.of(context).push(
                CreateProblemRoute(problemId: problem.id),
              );
            },
          )),
          DataCell(IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () {
              /// 問題削除のダイアログ
              showDialog(
                  context: context,
                  builder: (_) {
                    return Center(
                      child: SizedBox(
                          width: 512,
                          child: CancelDialog(
                            problem: problem,
                          )),
                    );
                  });
            },
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Gap(24),
                  Text(
                    '問題の管理',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  const Gap(48),
                  Padding(
                    padding: const EdgeInsets.only(top: 2.0),
                    child: TextButton(
                        onPressed: () {
                          AutoRouter.of(context).pushNamed(
                            '/manage/problems/new/edit',
                          );
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.add_box,
                              size: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .fontSize,
                            ),
                            const Gap(2),
                            const Text('問題の作成'),
                          ],
                        )),
                  )
                ],
              ),
              Row(
                children: [
                  // Padding(
                  //   // TODO 複数書いてるのをなんとかしたい
                  //   padding: const EdgeInsets.only(top: 4.0),
                  //   child: Row(
                  //     children: [
                  //       Checkbox(
                  //         activeColor: Theme.of(context).primaryColor,
                  //         value: state.isAutoLoad,
                  //         onChanged: notifier.onTapToggleAutoModeCheckBox,
                  //
                  //
                  //       ),
                  //       Text(
                  //         'AutoLoad',
                  //         style: Theme.of(context).textTheme.caption?.copyWith(
                  //               color: Theme.of(context).primaryColor,
                  //             ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // const Gap(16),
                  Padding(
                    padding: const EdgeInsets.only(top: 2.0),
                    child: IconButton(
                      onPressed: () {
                        notifier.fetchProblems();
                      },
                      icon: Icon(
                        Icons.refresh,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                  const Gap(24)
                ],
              )
            ],
          ),
          if (!state.isLoading)
            Expanded(
              child: Column(
                children: [
                  SizedBox(
                    height: 256,
                    child: Scrollbar(
                      isAlwaysShown: true,
                      controller: _scrollController,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: const ClampingScrollPhysics(),
                        controller: _scrollController,
                        child: Scrollbar(
                          child: SingleChildScrollView(
                            physics: const ClampingScrollPhysics(),
                            child: DataTable(
                              columns: [
                                const DataColumn(label: HeadingText('回答一覧')),
                                const DataColumn(
                                    label: HeadingText('未済点 ~15分/15~19分/20分~')),
                                const DataColumn(label: HeadingText('コード')),
                                const DataColumn(label: HeadingText('タイトル')),
                                const DataColumn(label: HeadingText('ID')),
                                const DataColumn(
                                    label: HeadingText('ポイント'), numeric: true),
                                const DataColumn(
                                    label: HeadingText('解決基準ポイント'),
                                    numeric: true),
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
                          ),
                        ),
                      ),
                    ),
                  ),
                  if (state.problem != null)
                    Expanded(
                      child: Scrollbar(
                        isAlwaysShown: true,
                        controller: _previewScrollController,
                        child: SingleChildScrollView(
                          physics: const ClampingScrollPhysics(),
                          controller: _previewScrollController,
                          child: SizedBox(
                            width: double.infinity,
                            child: Center(
                              child: SizedBox(
                                width: 1024,
                                child: Column(
                                  children: [
                                    const Gap(24),
                                    ProblemCard(
                                      edgeInsets: const EdgeInsets.all(48.0),
                                      child: MarkdownPreview(
                                          data: state.problem?.body ?? ''),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  const Gap(24),
                ],
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

class CancelDialog extends HookWidget {
  final Problem problem;

  const CancelDialog({required this.problem});

  @override
  Widget build(BuildContext context) {
    final notifier = useProvider(problemListProvider.notifier);

    final text = useState('');

    final textStyle = Theme.of(context).textTheme.bodyText2;

    return ProblemCard(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.cancel_outlined),
              ),
            ],
          ),
          const Gap(16),
          SelectableText.rich(
            TextSpan(
              text: 'この操作は元には戻せません。この操作を行うと ',
              style: textStyle,
              children: [
                TextSpan(
                    text: problem.title,
                    style: textStyle?.copyWith(fontWeight: FontWeight.bold)),
                TextSpan(
                  text: ' の問題文、回答などがすべて削除されます。',
                  style: textStyle,
                ),
              ],
            ),
          ),
          const Gap(16),
          SelectableText.rich(
            TextSpan(
              text: ' ',
              style: textStyle,
              children: [
                TextSpan(
                    text: problem.title,
                    style: textStyle?.copyWith(fontWeight: FontWeight.bold)),
                TextSpan(
                  text: ' と入力して確認して下さい',
                  style: textStyle,
                ),
              ],
            ),
          ),
          TextFormField(
            onChanged: (value) {
              text.value = value;
            },
          ),
          const Gap(16),
          ElevatedButton(
              onPressed: problem.title == text.value
                  ? () async {
                      notifier.deleteProblems(problem.id);
                      Navigator.pop(context);
                    }
                  : null,
              child: const Center(child: Text('確認して削除する。')))
        ],
      ),
    );
  }
}

const _fullLengthCode = 65248;

extension JapaneseString on String {
  String alphanumericToFullLength() {
    final regex = RegExp(r'^[a-zA-Z0-9]+$');
    final string = runes.map<String>((rune) {
      final char = String.fromCharCode(rune);
      return regex.hasMatch(char)
          ? String.fromCharCode(rune + _fullLengthCode)
          : char;
    });
    return string.join();
  }

  String alphanumericToHalfLength() {
    final regex = RegExp(r'^[Ａ-Ｚａ-ｚ０-９]+$');
    final string = runes.map<String>((rune) {
      final char = String.fromCharCode(rune);
      return regex.hasMatch(char)
          ? String.fromCharCode(rune - _fullLengthCode)
          : char;
    });
    return string.join();
  }
}
