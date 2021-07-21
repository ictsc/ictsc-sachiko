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
                                      '${state.problem?.point} pt',
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
                          const Gap(36),
                          SizedBox(
                              width: 1024,
                              child: ProblemCard(
                                  child: MarkdownEditor(
                                      controller: TextEditingController(),
                                      isPreview: false))),
                          const Gap(36),
                        ],
                      ),
                    ),
                  )
                : const CircularProgressIndicator()),
      ),
    );
  }
}
