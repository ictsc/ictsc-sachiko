import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'answer.freezed.dart';
part 'answer.g.dart';

@freezed
class Answer with _$Answer {
  const factory Answer({
    required String id,
    required int? point,
    required String body,
    required String userGroupId,
    required String problemId,
    required DateTime updatedAt,
    required DateTime createdAt,
  }) = _Answer;

  factory Answer.fromJson(Map<String, dynamic> json) => _$AnswerFromJson(json);
}