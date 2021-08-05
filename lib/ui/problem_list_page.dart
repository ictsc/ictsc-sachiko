import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ictsc_sachiko/domain/problem.dart';
import 'package:ictsc_sachiko/ui/common/header.dart';
import 'package:ictsc_sachiko/ui/common/markdown_preview.dart';
import 'package:ictsc_sachiko/view_model/problem_list_page_state_notifier.dart';
import 'package:responsive_grid/responsive_grid.dart';

class ProblemListPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final state = useProvider(problemListProvider);

    final titleTextStyle = Theme.of(context)
        .textTheme
        .headline6
        ?.copyWith(fontWeight: FontWeight.bold);

    final List<ResponsiveGridCol> problems = [];

    state.problems.asMap().forEach((i, e) => problems.add(ResponsiveGridCol(
          xl: 3,
          md: 4,
          sm: 6,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ProblemLink(
              index: i + 1,
              problem: e,
            ),
          ),
        )));

    // 環境変数から取得
    final notesContent = const bool.hasEnvironment('NOTES_CONTENTS')
        ? const String.fromEnvironment('NOTES_CONTENTS').replaceAll('\\n', '\n')
        : '';

    return Scaffold(
        appBar: Header(appBar: AppBar()),
        body: SingleChildScrollView(
          child: Center(
            child: SizedBox(
              width: 1040,
              child: Column(
                children: [
                  const Gap(24),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 16),
                    child: Text(
                      '問題一覧',
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Gap(24),
                  ResponsiveGridRow(
                    children: [
                      ResponsiveGridCol(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ProblemCard(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '解答時の注意点',
                                  style: titleTextStyle,
                                ),
                                const Gap(8),
                                MarkdownPreview(data: notesContent),
                              ],
                            ),
                          ),
                        ),
                      ),
                      ...problems,
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

class ProblemLink extends StatelessWidget {
  final int index;
  final Problem problem;

  const ProblemLink({Key? key, required this.index, required this.problem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final titleTextStyle = Theme.of(context)
        .textTheme
        .headline6
        ?.copyWith(fontWeight: FontWeight.bold);

    final linkTextStyle = Theme.of(context).textTheme.subtitle1?.copyWith(
        color: Theme.of(context).primaryColor, fontWeight: FontWeight.bold);

    final pointTextStyle = Theme.of(context).textTheme.bodyText2;

    return SizedBox(
      height: 212,
      width: 262,
      child: InkWell(
        customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        onTap: () {
          AutoRouter.of(context).pushNamed('/problems/${problem.id}');
        },
        child: ProblemCard(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(TextSpan(
                text: '$index ',
                style: titleTextStyle?.copyWith(
                    color: Theme.of(context).primaryColor),
                children: [
                  TextSpan(
                      text:
                          problem.title.isNotEmpty ? problem.title : 'Untitled',
                      style: titleTextStyle),
                ],
              )),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      '${problem.point} pt',
                      style: pointTextStyle,
                      textAlign: TextAlign.end,
                    ),
                  ),
                  Text('問題文へ →', style: linkTextStyle),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProblemCard extends StatelessWidget {
  final Widget child;
  final Color? color;

  const ProblemCard({Key? key, required this.child, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 16, right: 16, top: 24, bottom: 24),
        child: child,
      ),
    );
  }
}
