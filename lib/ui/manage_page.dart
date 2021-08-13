import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:ictsc_sachiko/ui/common/header.dart';
import 'package:ictsc_sachiko/ui/problem_list_page.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:url_launcher/link.dart';

class ManagePage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(
        appBar: AppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 32, right: 32),
        child: ResponsiveGridRow(
          children: [
            ResponsiveGridCol(
              xl: 3,
              md: 4,
              sm: 6,
              child: Link(
                uri: Uri.parse('/#/manage/problems'),
                builder: (_, __) =>InkWell(
                  onTap: () {
                    AutoRouter.of(context).pushNamed('/manage/problems');
                  },
                  customBorder: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ProblemCard(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.question_answer,
                              color: Theme.of(context).textTheme.caption?.color,
                            ),
                            const Gap(8),
                            Text(
                              '問題',
                              style: Theme.of(context).textTheme.headline6,
                            ),
                          ],
                        ),
                        const Gap(16),
                        Container(
                          height: 1,
                          color: Theme.of(context).dividerColor,
                        ),
                        const Gap(24),
                        Row(
                          children: [
                            const Icon(Icons.arrow_forward),
                            const Gap(8),
                            Text(
                              '問題管理に移動',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            // TODO 問題管理に統合した
            // ResponsiveGridCol(
            //   xl: 3,
            //   md: 4,
            //   sm: 6,
            //   child: InkWell(
            //     onTap: () {
            //       AutoRouter.of(context).pushNamed('/manage/scoring');
            //     },
            //     customBorder: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(8),
            //     ),
            //     child: ProblemCard(
            //       child: Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           Row(
            //             children: [
            //               Icon(
            //                 Icons.check,
            //                 color: Theme.of(context).textTheme.caption?.color,
            //               ),
            //               const Gap(8),
            //               Text(
            //                 '採点',
            //                 style: Theme.of(context).textTheme.headline6,
            //               ),
            //             ],
            //           ),
            //           const Gap(16),
            //           Container(
            //             height: 1,
            //             color: Theme.of(context).dividerColor,
            //           ),
            //           const Gap(24),
            //           Row(
            //             children: [
            //               const Icon(Icons.arrow_forward),
            //               const Gap(8),
            //               Text(
            //                 '採点管理に移動',
            //                 style: Theme.of(context).textTheme.bodyText1,
            //               ),
            //             ],
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
