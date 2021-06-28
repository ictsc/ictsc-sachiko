
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:ictsc_sachiko/ui/common/editor_header.dart';
import 'package:markdown/markdown.dart' as md;

class ProblemCreatePage extends HookWidget {
  final editorController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final togglePreview = useState(false);

    // return Scaffold(
    //   appBar: AppBar(),
    //   body: Column(
    //     children: [
    //       TextField(),
    //       Row(
    //         children: [
    //           Card(
    //             child: SizedBox(width: 512, child: TextField()),
    //           ),
    //         ],
    //       ),
    //     ],
    //   ),
    // );

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
        body: Center(
          child: SizedBox(
            width: 1024,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'タイトル',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 812,
                        child: Card(
                            child: Padding(
                          padding: const EdgeInsets.only(
                              top: 40, bottom: 48, left: 32, right: 32),
                          child: editor(
                              isEditor: togglePreview.value, context: context),
                        )),
                      ),
                      Expanded(
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Preview'),
                              Switch(
                                value: togglePreview.value,
                                onChanged: (value) =>
                                    togglePreview.value = value,
                                // child: Text('toggle'),
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
        ));
  }

  Widget editor({required bool isEditor, required BuildContext context}) {
    final test = FocusNode();

    if (!isEditor) {
      return TextFormField(
        textCapitalization: TextCapitalization.sentences,
        minLines: 9,
        maxLines: null,
        controller: editorController,
        decoration: const InputDecoration(
          hintText: 'Problem Content...',
          border: InputBorder.none,
        ),
        style: Theme.of(context).textTheme.bodyText2,
        focusNode: test,
      );
    }

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0, right: 4.0),
        child: MarkdownBody(
          data: editorController.text,
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
}
