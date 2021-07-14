import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ictsc_sachiko/model/problem.dart';
import 'package:ictsc_sachiko/ui/common/header.dart';
import 'package:ictsc_sachiko/view_model/problem_list_page_state_notifier.dart';

class ProblemListPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final state = useProvider(problemListProvider);

    final problems = state.problems
        .map((e) => ProblemLink(
              problem: e,
            ))
        .toList();

    return Scaffold(
        appBar: Header(appBar: AppBar()),
        body: SingleChildScrollView(
          child: Center(
            child: SizedBox(
              width: 1024,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Gap(8),
                  Text(
                    '問題一覧',
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const Gap(8),
                  ...problems,
                ],
              ),
            ),
          ),
        ));
  }
}

class ProblemLink extends StatelessWidget {
  final Problem problem;

  const ProblemLink({Key? key, required this.problem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 96,
      child: Card(
          elevation: 0,
          child: Row(
            children: [
              Container(
                width: 8,
                height: double.infinity,
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(4.0),
                      topLeft: Radius.circular(4.0),
                    )),
              ),
              const Gap(8),
              Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Gap(16),
                  Text(
                    '100pt',
                    style: Theme.of(context)
                        .textTheme
                        .caption
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const Gap(8),
                  Row(
                    children: [
                      Text(
                        problem.title.isEmpty ? 'Untitled' : problem.title,
                        style: Theme.of(context).textTheme.bodyText2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                      ),
                    ],
                  )
                ],
              ),
              const Gap(8),
            ],
          )),
    );
  }
}
