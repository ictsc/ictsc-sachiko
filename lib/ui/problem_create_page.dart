import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:ictsc_sachiko/ui/common/editor_header.dart';
import 'package:ictsc_sachiko/view_model/problem_create_page_state_notifier.dart';
import 'package:markdown/markdown.dart' as md;

class ProblemCreatePage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final provider = useProvider(createProblemProvider);
    final notifier = useProvider(createProblemProvider.notifier);

    return Scaffold(
        appBar: EditorHeader(appBar: AppBar()),
        floatingActionButton: Container(
          margin: const EdgeInsets.only(bottom: 16, right: 16),
          child: FloatingActionButton.extended(
            onPressed: () {
              // Add your onPressed code here!
            },
            label: const Text('保存する'),
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: SizedBox(
              width: 1024,
              child: Form(
                key: notifier.formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      /*
                       * タイトル
                       */
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'タイトル',
                        ),
                        style: Theme.of(context).textTheme.headline6,
                        controller: notifier.titleController,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0, left: 8.0),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 128,
                            /*
                             * 問題コード
                             */
                            child: TextField(
                              decoration: InputDecoration(
                                  labelText: '問題コード',
                                  labelStyle:
                                      Theme.of(context).textTheme.caption),
                            ),
                          ),
                          const Padding(padding: EdgeInsets.only(right: 8.0)),
                          SizedBox(
                            width: 128,
                            /*
                             * ポイント
                             */
                            child: TextField(
                              decoration: InputDecoration(
                                  labelText: 'ポイント',
                                  labelStyle:
                                      Theme.of(context).textTheme.caption),
                            ),
                          ),
                          const Padding(padding: EdgeInsets.only(right: 8.0)),
                          /*
                           * 解決基準ポイント
                           */
                          SizedBox(
                            width: 128,
                            child: TextField(
                              decoration: InputDecoration(
                                  labelText: '解決基準ポイント',
                                  labelStyle:
                                      Theme.of(context).textTheme.caption),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Card(
                                child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 40,
                                        bottom: 48,
                                        left: 32,
                                        right: 32),
                                    child: ProblemEditor())),
                          ),
                          const Padding(padding: EdgeInsets.only(left: 16.0)),
                          SizedBox(
                            width: 156,
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Padding(
                                    padding:
                                        EdgeInsets.only(top: 8.0, bottom: 8.0),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'プレビュー',
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle2,
                                      ),
                                      Switch(
                                        value:
                                            useProvider(createProblemProvider)
                                                .isPreview,
                                        onChanged: (value) =>
                                            notifier.onSetIsPreviewButton(
                                                isPreview: value),
                                        // child: Text('toggle'),
                                      ),
                                    ],
                                  ),
                                  const Padding(
                                    padding:
                                        EdgeInsets.only(top: 8.0, bottom: 8.0),
                                    child: Divider(),
                                  ),
                                  PopupMenuButton(
                                    itemBuilder: (BuildContext context) => [],
                                    enabled: false,
                                    child: Center(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '作者',
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle2,
                                          ),
                                          const Icon(
                                            Icons.settings_rounded,
                                            size: 16,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Text(
                                      '末登録',
                                      style:
                                          Theme.of(context).textTheme.caption,
                                    ),
                                  ),
                                  const Padding(
                                    padding:
                                        EdgeInsets.only(top: 8.0, bottom: 8.0),
                                    child: Divider(),
                                  ),
                                  PopupMenuButton(
                                    itemBuilder: (BuildContext context) => [],
                                    enabled: false,
                                    child: Center(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '前提問題',
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle2,
                                          ),
                                          const Icon(
                                            Icons.settings_rounded,
                                            size: 16,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Text(
                                      'なし',
                                      style:
                                          Theme.of(context).textTheme.caption,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}

/// エディターの部分
class ProblemEditor extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final provider = useProvider(createProblemProvider);

    final editorTextController =
        useProvider(createProblemProvider.notifier).editorTextController;

    if (provider.isPreview) {
      return SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0, right: 4.0),
          child: MarkdownBody(
            data: editorTextController.text,
            selectable: true,
            extensionSet: md.ExtensionSet(
              md.ExtensionSet.gitHubFlavored.blockSyntaxes,
              [
                md.EmojiSyntax(),
                ...md.ExtensionSet.gitHubFlavored.inlineSyntaxes
              ],
            ),
          ),
        ),
      );
    }

    return TextFormField(
      textCapitalization: TextCapitalization.sentences,
      minLines: 9,
      maxLines: null,
      controller: editorTextController,
      decoration: const InputDecoration(
        hintText: 'Problem Content...',
        border: InputBorder.none,
      ),
      style: Theme.of(context).textTheme.bodyText2,
    );
  }
}

/// サイドメニュー
class ProblemCreateSideMenu extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
