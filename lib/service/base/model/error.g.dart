// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UnauthorisedRequest _$_$_UnauthorisedRequestFromJson(
    Map<String, dynamic> json) {
  return $checkedNew(r'_$_UnauthorisedRequest', json, () {
    final val = _$_UnauthorisedRequest();
    return val;
  });
}

Map<String, dynamic> _$_$_UnauthorisedRequestToJson(
        _$_UnauthorisedRequest instance) =>
    <String, dynamic>{};

_$_RequestError _$_$_RequestErrorFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_RequestError', json, () {
    final val = _$_RequestError(
      apiError: $checkedConvert(json, 'api_error',
          (v) => ApiError.fromJson(v as Map<String, dynamic>)),
    );
    return val;
  }, fieldKeyMap: const {'apiError': 'api_error'});
}

Map<String, dynamic> _$_$_RequestErrorToJson(_$_RequestError instance) =>
    <String, dynamic>{
      'api_error': instance.apiError,
    };

_$_UnexpectedError _$_$_UnexpectedErrorFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_UnexpectedError', json, () {
    final val = _$_UnexpectedError();
    return val;
  });
}

Map<String, dynamic> _$_$_UnexpectedErrorToJson(_$_UnexpectedError instance) =>
    <String, dynamic>{};

_$_ApiError _$_$_ApiErrorFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_ApiError', json, () {
    final val = _$_ApiError(
      message: $checkedConvert(json, 'error', (v) => v as String),
    );
    return val;
  }, fieldKeyMap: const {'message': 'error'});
}

Map<String, dynamic> _$_$_ApiErrorToJson(_$_ApiError instance) =>
    <String, dynamic>{
      'error': instance.message,
    };
