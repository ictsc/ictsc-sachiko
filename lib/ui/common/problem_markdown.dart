import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:markdown_widget/markdown_generator.dart';

class ProblemMarkdown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final hTextStyle = Theme.of(context).textTheme.bodyText2?.copyWith();

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      ...MarkdownGenerator(data: '''
## Headers 見出し

先頭に`#`をレベル分記述します。

```
# 見出し1
## 見出し2
### 見出し3
#### 見出し4
##### 見出し5
###### 見出し6
```

# 見出し1
## 見出し2
### 見出し3
#### 見出し4
##### 見出し5
###### 見出し6
''').widgets!,
    ]);
  }
}
