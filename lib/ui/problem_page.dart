import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ictsc_sachiko/ui/common/header.dart';
import 'package:ictsc_sachiko/ui/common/markdown_editor.dart';
import 'package:ictsc_sachiko/ui/common/markdown_preview.dart';
import 'package:ictsc_sachiko/ui/problem_list_page.dart';
import 'package:ictsc_sachiko/view_model/problem_page_state.notifier.dart';

import 'manage_problem_answer_list_page.dart';

class ProblemPage extends HookWidget {
  final String id;

  const ProblemPage({@PathParam('id') required this.id});

  @override
  Widget build(BuildContext context) {
    final state = useProvider(problemPageStateProvider);
    final notifier = useProvider(problemPageStateProvider.notifier);
    useEffect(() {
      WidgetsBinding.instance?.addPostFrameCallback((_) {
        notifier.fetchProblem(id);
      });
    }, []);

    final titleTextStyle = Theme.of(context).textTheme.headline5?.copyWith(
          fontWeight: FontWeight.bold,
        );

    final captionTextStyle = Theme.of(context)
        .textTheme
        .bodyText2
        ?.copyWith(color: Theme.of(context).textTheme.caption?.color);

    /*
     * 回答の処理
     */
    final List<Widget> answerWidgets = [];

    state.answers.asMap().forEach((key, value) {
      answerWidgets.add(const Gap(20));

      answerWidgets.add(
        AnswerCard(answer: value, isShowPoint: true,),
      );
    });

    return Scaffold(
      appBar: Header(
        appBar: AppBar(),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        itemCount: 1,
        itemBuilder: (_, i) => Center(
            child: !state.isLoading
                ? Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: SizedBox(
                      width: 1024,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // const Gap(16),
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //   children: [
                          //     InkWell(
                          //         onTap: () {},
                          //         child: Text(
                          //           '< 繋がらないよ',
                          //           style: TextStyle(
                          //               color: Theme.of(context).primaryColor),
                          //         )),
                          //     InkWell(
                          //         onTap: () {},
                          //         child: Text(
                          //           ' 繋がらないよ >',
                          //           style: TextStyle(
                          //               color: Theme.of(context).primaryColor),
                          //         )),
                          //   ],
                          // ),
                          const Gap(40),
                          Padding(
                            padding: const EdgeInsets.only(left: 4.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                SelectableText(
                                  state.problem?.title ?? 'Untitled',
                                  style: titleTextStyle,
                                ),
                                const Gap(8),
                                Column(
                                  children: [
                                    SelectableText(
                                      '${state.problem?.point} pt  問題コード ${state.problem?.code}',
                                      style: captionTextStyle,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const Gap(40),
                          SizedBox(
                            width: 1024,
                            child: ProblemCard(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.info_outline_rounded,
                                        size: 18,
                                      ),
                                      const Gap(8),
                                      Text(
                                        '問題文',
                                        style: captionTextStyle,
                                      ),
                                    ],
                                  ),
                                  const Gap(12),
                                  SizedBox(
                                    height: 10.0,
                                    child: Center(
                                      child: Container(
                                        margin:
                                            const EdgeInsetsDirectional.only(
                                                start: 1.0, end: 1.0),
                                        height: 1.0,
                                        color: Theme.of(context)
                                            .textTheme
                                            .caption
                                            ?.color,
                                      ),
                                    ),
                                  ),
                                  const Gap(12),
                                  MarkdownPreview(
                                    data: state.problem?.body ?? '',
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Gap(80),
                          SizedBox(
                            width: 1024,
                            child: ProblemCard(
                              child: Column(
                                children: [
                                  const Gap(12),
                                  Center(
                                    child: Text('回答フォーム',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline5
                                            ?.copyWith(
                                              fontWeight: FontWeight.bold,
                                            )),
                                  ),
                                  const Gap(32),
                                  Container(
                                    color: Theme.of(context).dividerColor,
                                    height: 1,
                                  ),
                                  const Gap(16),
                                  AnswerEditor(
                                    actions: [
                                      TextButton(
                                        onPressed: notifier.onFetchAnswers(
                                            context, state.problem?.id ?? ''),
                                        child: Row(
                                          children: [
                                            const Text('提出を取得'),
                                            const Gap(8),
                                            const Icon(Icons.download),
                                          ],
                                        ),
                                      )
                                    ],
                                    controller: notifier.bodyController,
                                    submitButton: ElevatedButton(
                                        onPressed: notifier.onPostAnswer(id),
                                        child: const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text(
                                            '提出する',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        )),
                                    hintText: '''
お世話になっております。チーム○○です。

この問題ではxxxxxが原因でトラブルが発生したと考えられました。
そのため、以下のように設定を変更し、○○が正しく動くことを確認いたしました。
確認のほどよろしくお願いします。

### 手順

1. /etc/hoge/hoo.bar の編集
                                  ''',
                                    minLines: 9,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 1024,
                            child: Column(
                               children: answerWidgets,
                            ),
                          ),
                          // エディターとプレビューを切り替えたときに上に移動しないための余白
                          const Gap(1280),
                        ],
                      ),
                    ),
                  )
                : const CircularProgressIndicator()),
      ),
    );
  }
}

class AnswerEditor extends HookWidget {
  final TextEditingController controller;
  final ElevatedButton? submitButton;
  final String? hintText;
  final List<Widget>? actions;
  final int? minLines;

  const AnswerEditor({
    this.submitButton,
    this.hintText,
    this.minLines,
    this.actions,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final isPreview = useState(false);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                // Gap(4),
                ElevatedButton(
                  onPressed: isPreview.value
                      ? () {
                          isPreview.value = false;
                        }
                      : null,
                  child: const Text(
                    'Markdown',
                  ),
                ),
                const Gap(4),
                ElevatedButton(
                  onPressed: !isPreview.value
                      ? () {
                          isPreview.value = true;
                        }
                      : null,
                  child: const Text('Preview'),
                )
              ],
            ),
            Row(
              children: [...?actions],
            )
          ],
        ),
        const Gap(24),
        MarkdownEditor(
          controller: controller,
          isPreview: isPreview.value,
          minLines: minLines,
          isBorder: true,
          hintText: hintText,
        ),
        const Gap(8),
        submitButton ?? Container(),
      ],
    );
  }
}
