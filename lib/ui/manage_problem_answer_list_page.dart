import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ictsc_sachiko/domain/answer.dart';
import 'package:ictsc_sachiko/ui/common/markdown_preview.dart';
import 'package:ictsc_sachiko/ui/problem_list_page.dart';
import 'package:ictsc_sachiko/ui/problem_page.dart';
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

    state.answers.asMap().forEach((i, e) {
      answers.add(AnswerCard(
        answer: e,
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

  const AnswerCard({required this.answer});

  @override
  Widget build(BuildContext context) {
    return ProblemCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'GroupId: ${answer.group}',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Text('${answer.createdAt}'),
            ],
          ),
          const Gap(16),
          MarkdownPreview(data: answer.body),
          const Gap(32),
          Container(
            color: Theme.of(context).dividerColor,
            height: 1,
          ),
          SizedBox(
            width: 128,
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'ポイント',
                  labelStyle: Theme.of(context).textTheme.caption),
            ),
          ),
          const Gap(16),
          AnswerEditor(
            minLines: 3,
            controller: TextEditingController(),
            submitButton: ElevatedButton(
                onPressed: () {},
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '採点する',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
