import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ictsc_sachiko/ui/common/editor_header.dart';
import 'package:ictsc_sachiko/ui/common/markdown_editor.dart';
import 'package:ictsc_sachiko/view_model/create_problem_page_state_notifier.dart';
import 'package:ictsc_sachiko/view_model/model/problem_create_page_state.dart';

final createProblemProvider = StateNotifierProvider.autoDispose<
    CreateProblemPageStateNotifier, ProblemCreatePageState>(
  (refs) =>
      CreateProblemPageStateNotifier(const ProblemCreatePageState(), refs),
);

class CreateProblemPage extends HookWidget {
  const CreateProblemPage({@PathParam('problemId') this.problemId});

  final String? problemId;

  @override
  Widget build(BuildContext context) {
    final state = useProvider(createProblemProvider);
    final notifier = useProvider(createProblemProvider.notifier);

    useEffect(
      () {
        WidgetsBinding.instance?.addPostFrameCallback((_) {
          final id = problemId;
          if (id != null && id != 'new') {
            notifier.fetchProblem(context, id);
          }
        });
        return null;
      },
      [],
    );

    final formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: EditorHeader(appBar: AppBar()),
      floatingActionButton: Container(
        margin: const EdgeInsets.only(bottom: 16, right: 16),
        child: FloatingActionButton.extended(
          backgroundColor: Theme.of(context).primaryColor,
          onPressed: notifier.onSaveButton(
            context: context,
            key: formKey,
            id: problemId == 'new' ? null : problemId,
          ),
          label: const Text(
            '保存する',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: 1180,
            child: Form(
              key: formKey,
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
                              labelStyle: Theme.of(context).textTheme.caption,
                            ),
                            controller: notifier.codeController,
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
                              labelStyle: Theme.of(context).textTheme.caption,
                            ),
                            controller: notifier.pointController,
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
                              labelStyle: Theme.of(context).textTheme.caption,
                            ),
                            controller: notifier.solvedCriterionController,
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
                                right: 32,
                              ),
                              child: MarkdownEditor(
                                controller: notifier.bodyController,
                                isPreview: state.isPreview,
                                hintText: 'Problem Content...',
                              ),
                            ),
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(left: 16.0)),
                        SizedBox(
                          width: 156,
                          child: Center(
                            /**
                             * サイドメニュー
                             */
                            child: ProblemCreateSideMenu(),
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
      ),
    );
  }
}

/// サイドメニュー
class ProblemCreateSideMenu extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final provider = useProvider(createProblemProvider);
    final notifier = useProvider(createProblemProvider.notifier);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'プレビュー',
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Switch(
              activeColor: Theme.of(context).primaryColor,
              value: useProvider(createProblemProvider).isPreview,
              onChanged: (value) =>
                  notifier.onSetIsPreviewButton(isPreview: value),
              // child: Text('toggle'),
            ),
          ],
        ),
        IconButton(
          onPressed: notifier.onFileUpload(context),
          icon: const Icon(Icons.photo),
          tooltip: '画像をアップロードする。',
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: Divider(),
        ),
        PopupMenuButton(
          onSelected: (value) {
            // TODO 配列の番号を作者に入れる
          },
          offset: const Offset(0, 18),
          itemBuilder: (BuildContext context) => [
            PopupMenuItem(
              value: provider.author?.displayName,
              height: 18,
              child: Text(
                provider.author?.displayName ?? '',
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ),
          ],
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '作者',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                const Icon(
                  Icons.settings,
                  size: 16,
                ),
              ],
            ),
          ),
        ),
        TextFormField(
          enabled: false,
          initialValue: 'admin',
          style: Theme.of(context)
              .textTheme
              .caption!
              .copyWith(color: Theme.of(context).textTheme.bodyText1?.color),
          decoration: InputDecoration(
            hintText: '末登録',
            hintStyle: Theme.of(context).textTheme.caption,
            isDense: true,
            contentPadding: const EdgeInsets.only(top: 8, bottom: 4),
            border: InputBorder.none,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: Divider(),
        ),
        PopupMenuButton(
          itemBuilder: (BuildContext context) => [],
          enabled: false,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '前提問題',
                  style: Theme.of(context).textTheme.subtitle2,
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
            style: Theme.of(context).textTheme.caption,
          ),
        ),
      ],
    );
  }
}
