import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'answer.freezed.dart';
part 'answer.g.dart';

@freezed
class Answer with _$Answer {
  const factory Answer({
    required String id,
    required int point,
    required String group,
    required String problemId,
    required DateTime updatedAt,
    required DateTime createdAt,
  }) = _Answer;

  factory Answer.fromJson(Map<String, dynamic> json) => _$AnswerFromJson(json);
}

/*
"id": "d2c05224-50ac-49e7-b17a-85cbdfd74f08",
"created_at": "2021-07-21T13:46:17.302Z",
"updated_at": "2021-07-21T13:46:17.302Z",
"point": 0,
"body": "aaaa",
"group": "49485444-5c57-4530-bfba-603bce1ea72b",
"problem_id": "52fe3621-d827-459c-b34c-aea06a002c85"
 */
