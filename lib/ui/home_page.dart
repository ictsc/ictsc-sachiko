import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:ictsc_sachiko/ui/common/header.dart';
import 'package:ictsc_sachiko/ui/problem_list_page.dart';

import 'common/markdown_preview.dart';

class HomePage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final guideContent = const bool.hasEnvironment('GUIDE_CONTENTS')
        ? const String.fromEnvironment('GUIDE_CONTENTS')
            .replaceAll('\\n', '\n')
            .replaceAll('\\t', '\t')
        : '';

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
                    'ガイド',
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                const Gap(24),
                SizedBox(
                  width: 1024,
                  child: ProblemCard(
                    edgeInsets: const EdgeInsets.all(48.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Gap(12),
                        MarkdownPreview(
                          data: guideContent,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
