import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:markdown_widget/config/widget_config.dart';
import 'package:markdown_widget/markdown_widget.dart';

class ProblemMarkdown extends StatelessWidget {
  final String data;

  const ProblemMarkdown({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MarkdownWidget(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      data: data,
      widgetConfig: WidgetConfig(
        p: (_) {
          return SelectableText(_.textContent);
        },
        pre: (_) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SelectableText(
                _.textContent.trimRight(),
                style: Theme.of(context)
                    .textTheme
                    .caption
                    ?.copyWith(color: Colors.white),
              ),
            ),
          );
        },
        // block: (_) {
        //   print(_.textContent);
        //   print(_.textContent.split('\n'));
        //   return SelectableText(_.textContent);
        // },
      ),
      styleConfig: StyleConfig(
          titleConfig: TitleConfig(
            titleWrapper: (_) {
              return Padding(
                padding: const EdgeInsets.only(top: 24.0),
                child: _,
              );
            },
          ),
          // TODO
          codeConfig: CodeConfig(
            codeStyle: Theme.of(context).textTheme.caption,
            decoration:  BoxDecoration(
              color: Colors.blueGrey.shade50,
              borderRadius: BorderRadius.circular(4),
            ),
            padding: const EdgeInsets.only(top: 1, bottom: 1, left: 6, right: 4),
          )),
    );
  }
}
