import 'package:flutter/material.dart';
import 'package:ictsc_sachiko/ui/common/markdown_preview.dart';

/// エディターの部分
class MarkdownEditor extends StatelessWidget {
  final TextEditingController controller;
  final bool isPreview;
  final String? hintText;
  final bool isBorder;
  final int? minLines;

  const MarkdownEditor({
    required this.controller,
    required this.isPreview,
    this.hintText,
    this.minLines,
    this.isBorder = false,
  });

  @override
  Widget build(BuildContext context) {
    if (isPreview) {
      return SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0, right: 4.0),
          child: Column(
            children: [
              MarkdownPreview(
                data: controller.text,
              ),
              if (isBorder)
                Container(
                  height: 1,
                  color: Theme.of(context).dividerColor,
                ),
            ],
          ),
        ),
      );
    }

    return TextFormField(
      // textCapitalization: TextCapitalization.sentences,
      minLines: minLines,
      maxLines: null,
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        border: !isBorder ? InputBorder.none : null,
        enabledBorder: !isBorder
            ? InputBorder.none
            : UnderlineInputBorder(
                borderSide: BorderSide(color: Theme.of(context).dividerColor),
              ),
      ),
      style: Theme.of(context).textTheme.bodyText2,
    );
  }
}
