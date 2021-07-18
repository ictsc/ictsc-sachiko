import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:ictsc_sachiko/ui/common/header.dart';
import 'package:ictsc_sachiko/ui/common/problem_markdown.dart';
import 'package:ictsc_sachiko/ui/problem_list_page.dart';

class ProblemPage extends HookWidget {
  final String id;

  const ProblemPage({@PathParam('id') required this.id});

  @override
  Widget build(BuildContext context) {
    final titleTextStyle = Theme.of(context).textTheme.headline5?.copyWith(
          fontWeight: FontWeight.bold,
        );

    final captionTextStyle = Theme.of(context).textTheme.caption;

    return Scaffold(
      appBar: Header(
        appBar: AppBar(),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        itemCount: 1,
        itemBuilder: (_, i) => Center(
          child: Padding(
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
                    child: SelectableText(
                      'WEBページが見れない',
                      style: titleTextStyle,
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
                              const Gap(2),
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
                                margin: const EdgeInsetsDirectional.only(
                                    start: 1.0, end: 1.0),
                                height: 1.0,
                                color:
                                    Theme.of(context).textTheme.caption?.color,
                              ),
                            ),
                          ),
                          const Gap(36),
                          ProblemMarkdown(),
                        ],
                      ),
                    ),
                  ),
                  const Gap(36),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
