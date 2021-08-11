import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ictsc_sachiko/domain/answer.dart';
import 'package:ictsc_sachiko/service/model/answer_api.dart';
import 'package:ictsc_sachiko/ui/common/markdown_preview.dart';
import 'package:ictsc_sachiko/ui/problem_list_page.dart';
import 'package:ictsc_sachiko/view_model/answer_page_state_notifier.dart';

import 'common/header.dart';

class ManageProblemAnswerListPage extends HookWidget {
  final String problemId;

  const ManageProblemAnswerListPage(
    @PathParam('problemId') this.problemId,
  );

  @override
  Widget build(BuildContext context) {
    final state = useProvider(answerListProvider);
    final notifier = useProvider(answerListProvider.notifier);

    useEffect(() {
      WidgetsBinding.instance?.addPostFrameCallback((_) async {
        await notifier.fetchProblem(problemId);
        await notifier.fetchAnswers(problemId);
      });
    }, []);

    final titleTextStyle = Theme.of(context).textTheme.headline5?.copyWith(
          fontWeight: FontWeight.bold,
        );

    final captionTextStyle = Theme.of(context)
        .textTheme
        .bodyText2
        ?.copyWith(color: Theme.of(context).textTheme.caption?.color);

    final List<Widget> answers = [];

    state.answers.asMap().forEach((i, answer) {
      answers.add(AnswerCard(
        answer: answer,
        controller: useTextEditingController(
          text: answer.point?.toString(),
        ),
        isShowEditor: true,
      ));
      answers.add(const Gap(40));
    });

    final problem = state.problem;

    return Scaffold(
      appBar: Header(
        appBar: AppBar(),
      ),
      body: state.isLoading
          ? Container()
          : ListView.builder(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              itemCount: 1,
              itemBuilder: (_, i) => Center(
                child: SizedBox(
                  width: 1024,
                  child: Column(
                    children: [
                      const Gap(40),
                      Padding(
                        padding: const EdgeInsets.only(left: 4.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                SelectableText(
                                  '採点： ${problem?.title}',
                                  style: titleTextStyle,
                                ),
                                const Gap(8),
                                SelectableText(
                                  '満点 ${problem?.point} pt',
                                  style: captionTextStyle,
                                ),
                                const Gap(8),
                                SelectableText(
                                  '採点基準 ${problem?.solvedCriterion} pt',
                                  style: captionTextStyle,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    // TODO MVVMに移動
                                    notifier.fetchAnswers(problemId);
                                  },
                                  icon: Icon(
                                    Icons.refresh,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                ),
                                const Gap(24)
                              ],
                            )
                          ],
                        ),
                      ),
                      const Gap(40),
                      ...answers
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}

class AnswerCard extends HookWidget {
  final Answer answer;
  final TextEditingController? controller;
  final bool isShowEditor;
  final bool isShowPoint;

  const AnswerCard(
      {required this.answer,
      this.controller,
      this.isShowEditor = false,
      this.isShowPoint = false});

  @override
  Widget build(BuildContext context) {
    final notifier = useProvider(answerListProvider.notifier);

    return ProblemCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  if (answer.point != null)
                    Row(
                      children: [
                        const Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                        const Gap(16),
                      ],
                    ),
                  /*
                   * チーム名の表示
                   *
                   * ポイントが表示されている状態 = 自信のチームの回答なため、
                   * ポイントが表示されている際は表示を行わない
                   */
                  if (!isShowPoint)
                    SelectableText(
                      'userGroupId: ${answer.userGroupId}',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  /*
                   * 得点の表示
                   *
                   * エディターが表示されているときは表示しないようになっている。
                   */
                  if (!isShowEditor)
                    SelectableText(
                      answer.point != null ? '${answer.point} pt' : '未済点',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                ],
              ),
              Text('${answer.createdAt}'),
            ],
          ),
          const Gap(16),
          MarkdownPreview(data: answer.body),
          if (isShowEditor)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(32),
                Container(
                  color: Theme.of(context).dividerColor,
                  height: 1,
                ),
                SizedBox(
                  width: 128,
                  child: TextField(
                    controller: controller,
                    key: ValueKey(answer.id),
                    decoration: InputDecoration(
                        labelText: 'ポイント',
                        labelStyle: Theme.of(context).textTheme.caption),
                  ),
                ),
                const Gap(16),
                ElevatedButton(
                  onPressed: () {
                    notifier.onTapAnswerSave(UpdateAnswerRequest(
                      problemId: answer.problemId,
                      answerId: answer.id,
                      point: int.tryParse(controller?.text ?? '') ?? 0,
                      body: answer.body,
                    ));
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      '採点する',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
