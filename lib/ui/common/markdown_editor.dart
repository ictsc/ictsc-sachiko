import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ictsc_sachiko/ui/common/markdown_preview.dart';

/// エディターの部分
class MarkdownEditor extends StatelessWidget {
  final TextEditingController controller;
  final bool isPreview;
  final String? hintText;

  const MarkdownEditor({required this.controller, required this.isPreview, this.hintText,});

  @override
  Widget build(BuildContext context) {
    if (isPreview) {
      return SizedBox(
        width: double.infinity,
        child: Padding(
            padding: const EdgeInsets.only(top: 8.0, right: 4.0),
            child: MarkdownPreview(
              data: controller.text,
            )),
      );
    }

    return TextFormField(
      // textCapitalization: TextCapitalization.sentences,
        minLines: 9,
        maxLines: null,
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
        ),
        style: Theme.of(context).textTheme.bodyText2);
  }
}