import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictsc_sachiko/model/problem.dart';

part 'create_problem_request.freezed.dart';
part 'create_problem_request.g.dart';

@freezed
abstract class CreateProblemRequest with _$CreateProblemRequest {
  const factory CreateProblemRequest({
    required Problem problem,
  }) = _CreateProblemRequest;

 factory CreateProblemRequest.fromJson(Map<String, dynamic> json) => _$CreateProblemRequestFromJson(json);
}