import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:gap/gap.dart';
import 'package:markdown/markdown.dart' as md;
import 'package:url_launcher/url_launcher.dart';

class MarkdownPreview extends HookWidget {
  final String data;

  const MarkdownPreview({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (data.isEmpty) {
      return SizedBox(
        height: 96,
        child: Center(
          child: Text(
            '本文がありません',
            style: TextStyle(color: Theme.of(context).textTheme.caption?.color),
          ),
        ),
      );
    }

    return Markdown(
      data: data,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      selectable: true,
      padding: EdgeInsets.zero,
      builders: {
        // 'a': CustomPBuilder(),
        // 'p': CustomPBuilder(),
        // 'li':  CustomPBuilder(),
        'code': CustomCodeBuilder(),
        'pre': CustomPreBuilder(),
        'h1': CustomHeader1Builder(),
        'h2': CustomHeader2Builder(),
        'h3': CustomHeader3Builder(),
        // 'h4':  CustomPBuilder(),
        // 'h5':  CustomPBuilder(),
        // 'h6':  CustomPBuilder(),
        // 'em': CustomPBuilder(),
        // 'strong': CustomPBuilder(),
        // 'del': CustomPBuilder(),
        'blockquote': CustomBlockQuoteBuilder(),
        // 'table': p,
        // 'th': tableHead,
        // 'tr': tableBody,
        // 'td': tableBody,
      },
      imageBuilder: (uri, _, __) {
        return Padding(
          padding: const EdgeInsets.only(top: 16, bottom: 16),
          child: Image.network(uri.toString()),
        );
      },
      onTapLink: (url, _, __) {
        launch(url);
      },
    );

//     return MarkdownWidget(
//       shrinkWrap: true,
//       physics: const NeverScrollableScrollPhysics(),
//       data: data,
//       widgetConfig: WidgetConfig(
//         // ここでパースすると他の要素が使えなくなる
//         // p: (element) {
//         //   element.
//         //
//         //     // print(node.toString());
//         //   });
//         //   return SelectableText(element.textContent);
//         // },
//         pre: (element) {
//           return Pre(
//             text: element.textContent.trimRight(),
//           );
//         },
//         // block: (_) {
//         //   print(_.textContent);
//         //   print(_.textContent.split('\n'));
//         //   return SelectableText(_.textContent);
//         // },
//       ),
//       styleConfig: StyleConfig(
//         markdownTheme:
//             isDark ? MarkdownTheme.darkTheme : MarkdownTheme.lightTheme,
//         pConfig: PConfig(
//           onLinkTap: (url) {
//             if (url != null) {
//               launch(url);
//             }
//           },
//         ),
//
//         // h1などのタイトル
//         titleConfig: TitleConfig(
//           titleWrapper: (_) {
//             return Padding(
//               padding: const EdgeInsets.only(top: 24.0),
//               child: _,
//             );
//           },
//         ),
//
//         // インラインコード
//         codeConfig: CodeConfig(
//           codeStyle: Theme.of(context)
//               .textTheme
//               .caption
//               ?.copyWith(color: Theme.of(context).textTheme.bodyText2?.color),
//           decoration: BoxDecoration(
//             color: Theme.of(context).dividerColor.withOpacity(0.1),
//             borderRadius: BorderRadius.circular(4),
//           ),
//           padding: const EdgeInsets.only(top: 1, bottom: 2, left: 6, right: 4),
//         ),
//         imgBuilder: (url, __) {
//           return Padding(
//             padding: const EdgeInsets.only(top: 16, bottom: 16, left: 2, right: 2),
//             child: Image.network(url),
//           );
//         },
//
//         // テーブル
//         tableConfig: TableConfig(
//           wrapBuilder: (table) {
//             return Padding(
//               padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
//               child: table,
//             );
//           },
//           headChildWrapper: (widget) {
//             return Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: widget,
//             );
//           },
//           bodyChildWrapper: (widget) {
//             return Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: widget,
//             );
//           },
//         ),
//         ulConfig: UlConfig(
//           dotWidget: (_, __) {
//             return Container(
//               transform: Matrix4.translationValues(0.0, -3.0, 0.0),
//               child: const Text(
//                 '・',
//                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
//               ),
//             );
//           },
//           ulWrapper: (_) {
//             return Padding(
//               padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
//               child: _,
//             );
//           }
//         ),
//       ),
//     );
  }
}

/// H1
class CustomHeader1Builder extends MarkdownElementBuilder {
  @override
  Widget visitText(md.Text text, TextStyle? preferredStyle) {
    return H1(text: text.text);
  }
}

/// H2
class CustomHeader2Builder extends MarkdownElementBuilder {
  @override
  Widget visitText(md.Text text, TextStyle? preferredStyle) {
    return H2(text: text.text);
  }
}

/// H3
class CustomHeader3Builder extends MarkdownElementBuilder {
  @override
  Widget visitText(md.Text text, TextStyle? preferredStyle) {
    return H3(text: text.text);
  }
}

/// Image
class CustomImageBuilder extends MarkdownElementBuilder {
  @override
  Widget visitElementAfter(md.Element element, TextStyle? preferredStyle) {
    return Container();
  }
}

/// Code
class CustomCodeBuilder extends MarkdownElementBuilder {
  @override
  Widget visitElementAfter(md.Element element, TextStyle? preferredStyle) {
    return SelectableText.rich(
      TextSpan(
        text: element.textContent,
        style: const TextStyle(
          color: Colors.red,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  Widget visitText(md.Text text, TextStyle? preferredStyle) {
    return Container();
  }
}

/// BlockQuote
class CustomBlockQuoteBuilder extends MarkdownElementBuilder {
  @override
  Widget visitElementAfter(md.Element element, TextStyle? preferredStyle) {
    return BlockQuote(text: element.textContent);
  }
}

/// Pre
class CustomPreBuilder extends MarkdownElementBuilder {
  @override
  Widget visitElementAfter(md.Element element, TextStyle? preferredStyle) {
    return Pre(text: element.textContent);
  }

  @override
  Widget visitText(md.Text text, TextStyle? preferredStyle) {
    return Container();
  }
}

/*
 * Core
 */

class H1 extends HookWidget {
  final String text;

  const H1({required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Gap(16),
        SelectableText.rich(
          TextSpan(
            text: text,
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          height: 1,
          color: Theme.of(context).dividerColor,
        ),
        const Gap(8),
      ],
    );
  }
}

class H2 extends HookWidget {
  final String text;

  const H2({required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Gap(32),
        SelectableText.rich(
          TextSpan(
            text: text,
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        const Gap(8),
      ],
    );
  }
}

class H3 extends HookWidget {
  final String text;

  const H3({required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Gap(16),
        SelectableText.rich(
          TextSpan(
            text: text,
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        const Gap(8),
      ],
    );
  }
}

class BlockQuote extends HookWidget {
  final String text;

  const BlockQuote({required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Gap(16),
        IntrinsicHeight(
          child: Row(
            children: [
              Container(
                width: 4,
                color: Theme.of(context).dividerColor,
              ),
              Flexible(
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 8.0),
                  child: SelectableText(
                    text,
                    style: TextStyle(
                      color: Theme.of(context).textTheme.caption?.color,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const Gap(8),
      ],
    );
  }
}

class Pre extends HookWidget {
  final String text;

  const Pre({required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Gap(16),
        Stack(
          alignment: Alignment.topRight,
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 20.0,
                  left: 20.0,
                  right: 20.0,
                  bottom: 4.0,
                ),
                child: SelectableText(
                  text,
                  style: Theme.of(context).textTheme.caption?.copyWith(
                        fontFamily: 'Roboto mono',
                        color: Colors.white,
                      ),
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                final data = ClipboardData(text: text);
                Clipboard.setData(data);
                context.showFlashBar(
                  content: Text(
                    'コピーしました',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2
                        ?.copyWith(color: Colors.white),
                  ),
                  duration: const Duration(seconds: 3),
                  backgroundColor: Colors.green,
                );
              },
              tooltip: 'クリップボードにコピー',
              icon: const Icon(
                Icons.content_copy_outlined,
                size: 20,
                color: Colors.white,
              ),
            ),
          ],
        ),
        const Gap(16),
      ],
    );
  }
}
