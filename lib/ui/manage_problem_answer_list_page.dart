import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:ictsc_sachiko/ui/common/markdown_preview.dart';
import 'package:ictsc_sachiko/ui/problem_list_page.dart';
import 'package:ictsc_sachiko/ui/problem_page.dart';

import 'common/header.dart';

class ManageProblemAnswerListPage extends HookWidget {
  final String problemId;

  const ManageProblemAnswerListPage(
    @PathParam('problemId') this.problemId,
  );

  @override
  Widget build(BuildContext context) {
    final titleTextStyle = Theme.of(context).textTheme.headline5?.copyWith(
          fontWeight: FontWeight.bold,
        );

    final captionTextStyle = Theme.of(context)
        .textTheme
        .bodyText2
        ?.copyWith(color: Theme.of(context).textTheme.caption?.color);

    return Scaffold(
        appBar: Header(
          appBar: AppBar(),
        ),
        body: ListView.builder(
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
                          '回答一覧： Untitled',
                          style: titleTextStyle,
                        ),
                        const Gap(8),
                        SelectableText(
                          '満点 100 pt',
                          style: captionTextStyle,
                        ),
                        Gap(8),
                        SelectableText(
                          '採点基準 100 pt',
                          style: captionTextStyle,
                        ),
                      ],
                    ),
                  ),
                  const Gap(40),
                  ProblemCard(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Text(
                                'GroupId: 1233-123414-134134-134134',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const Text('2020/01/01 15:15'),
                        ],
                      ),
                      const Gap(16),
                      const MarkdownPreview(data: '''
お世話になっております。チーム○○です。

この問題ではxxxxxが原因でトラブルが発生したと考えられました。
そのため、以下のように設定を変更し、○○が正しく動くことを確認いたしました。
確認のほどよろしくお願いします。

### 手順

1. /etc/hoge/hoo.bar の編集
                      '''),
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
                                style: TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                            )),
                      ),
                    ],
                  )),
                ],
              ),
            ),
          ),
        ));
  }
}
