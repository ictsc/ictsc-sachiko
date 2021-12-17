import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ictsc_sachiko/service/model/ranking_api.dart';
import 'package:ictsc_sachiko/ui/problem_list_page.dart';
import 'package:ictsc_sachiko/view_model/scoreboard_page_state_notifier.dart';

import 'common/header.dart';

class ScoreboardPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final state = useProvider(scoreboardProvider);
    final notifier = useProvider(scoreboardProvider.notifier);

    final List<TableRow> rankingList = [];

    state.ranking.asMap().forEach((key, value) {
      rankingList.add(
        rankingTableRow(context, value),
      );
    });

    return Scaffold(
      appBar: Header(appBar: AppBar()),
      body: ListView.builder(
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        itemCount: 1,
        itemBuilder: (_, i) => Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: SizedBox(
              width: 1024,
              child: Column(
                children: [
                  const Gap(24),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 16),
                    child: Text(
                      'スコアボード',
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Gap(24),
                  DropdownButton(
                    value: state.isFetchTopRanking,
                    items: [
                      const DropdownMenuItem(
                        value: true,
                        child: Text('上位ランキング'),
                      ),
                      const DropdownMenuItem(
                        value: false,
                        child: Text('自チーム周辺ランキング'),
                      ),
                    ],
                    onChanged: notifier.onTapToggleFetchMode(),
                  ),
                  const Gap(24),
                  SizedBox(
                    width: 1024,
                    child: ProblemCard(
                      //   const EdgeInsets.only(left: 16, right: 16, top: 24, bottom: 24),
                      edgeInsets: EdgeInsets.zero,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Table(
                            defaultVerticalAlignment:
                                TableCellVerticalAlignment.middle,
                            border: TableBorder(
                              horizontalInside: BorderSide(
                                color: Theme.of(context).dividerColor,
                              ),
                            ),
                            columnWidths: {
                              1: const FlexColumnWidth(2),
                              2: const FlexColumnWidth(3),
                            },
                            children: rankingList,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  TableRow rankingTableRow(BuildContext context, Group group) {
    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.all(32.0),
          child: SelectableText(
            '${group.rank}位',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        SelectableText(
          group.userGroup.name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        SelectableText(
          group.userGroup.organization,
          // style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.all(32.0),
          child: SelectableText(
            '${group.point}pt',
            textAlign: TextAlign.end,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
