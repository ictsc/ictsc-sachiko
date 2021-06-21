// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_out_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Success _$_$SuccessFromJson(Map<String, dynamic> json) {
  return _$Success();
}

Map<String, dynamic> _$_$SuccessToJson(_$Success instance) =>
    <String, dynamic>{};

_$Failure _$_$FailureFromJson(Map<String, dynamic> json) {
  return _$Failure(
    json['errorMessage'] as String,
  );
}

Map<String, dynamic> _$_$FailureToJson(_$Failure instance) => <String, dynamic>{
      'errorMessage': instance.errorMessage,
    };
