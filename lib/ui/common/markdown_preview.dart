import 'package:flash/flash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ictsc_sachiko/view_model/common/app_state_notifier.dart';
import 'package:markdown_widget/config/widget_config.dart';
import 'package:markdown_widget/markdown_widget.dart';

class MarkdownPreview extends HookWidget {
  final String data;

  const MarkdownPreview({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final app = useProvider(appStateProvider);

    final isDark = app.isDark ?? false;

    if (data.isEmpty) {
      return SizedBox(
        height: 96,
        child: Center(
            child: Text(
          '本文がありません',
          style: TextStyle(color: Theme.of(context).textTheme.caption?.color),
        )),
      );
    }

    return MarkdownWidget(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      data: data,
      widgetConfig: WidgetConfig(
        p: (element) {
          return SelectableText(element.textContent);
        },
        pre: (element) {
          return Pre(
            text: element.textContent.trimRight(),
          );
        },
        // block: (_) {
        //   print(_.textContent);
        //   print(_.textContent.split('\n'));
        //   return SelectableText(_.textContent);
        // },
      ),
      styleConfig: StyleConfig(
          markdownTheme:
              isDark ? MarkdownTheme.darkTheme : MarkdownTheme.lightTheme,
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
            codeStyle: Theme.of(context)
                .textTheme
                .caption
                ?.copyWith(color: Theme.of(context).textTheme.bodyText2?.color),
            decoration: BoxDecoration(
              color: Theme.of(context).dividerColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(4),
            ),
            padding:
                const EdgeInsets.only(top: 1, bottom: 1, left: 6, right: 4),
          )),
    );
  }
}

class Pre extends HookWidget {
  final String text;

  const Pre({required this.text});

  @override
  Widget build(BuildContext context) {
    // TODO 長いとスクロールするようにする

    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SelectableText(
              text,
              style: Theme.of(context)
                  .textTheme
                  .caption
                  ?.copyWith(color: Colors.white),
            ),
          ),
        ),
        IconButton(
            onPressed: () async {
              final data = ClipboardData(text: text);
              await Clipboard.setData(data);
              context.showFlashBar(
                content: Text(
                  'コピーしました',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      ?.copyWith(color: Colors.white),
                ),
                duration: const Duration(seconds: 3),
                backgroundColor: Theme.of(context).primaryColor,
              );
            },
            tooltip: 'クリップボードにコピー',
            icon: const Icon(
              Icons.content_copy_outlined,
              size: 20,
              color: Colors.white,
            )),
      ],
    );
  }
}
