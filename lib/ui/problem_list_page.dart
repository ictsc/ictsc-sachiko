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
import 'package:url_launcher/link.dart';

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
                                const Gap(16),
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
      height: 216,
      width: 262,
      child: Link(
        uri: Uri.parse('/#/problems/${problem.id}'),
        builder: (_, __) => InkWell(
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
                Column(
                  children: [
                    Text.rich(TextSpan(
                      text: '',
                      children: [
                        TextSpan(
                          text: '${index.toString().alphanumericToFullLength()} ',
                          style: titleTextStyle?.copyWith(
                              color: Theme.of(context).primaryColor),
                        ),
                        TextSpan(
                            text: problem.title.isNotEmpty
                                ? problem.title
                                : 'Untitled',
                            style: titleTextStyle),
                      ],
                    )),
                  ],
                ),
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
      ),
    );
  }
}

class ProblemCard extends StatelessWidget {
  final Widget child;
  final Color? color;
  final EdgeInsets edgeInsets;

  const ProblemCard({
    Key? key,
    required this.child,
    this.color,
    this.edgeInsets =
        const EdgeInsets.only(left: 16, right: 16, top: 24, bottom: 24),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: edgeInsets,
        child: child,
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


