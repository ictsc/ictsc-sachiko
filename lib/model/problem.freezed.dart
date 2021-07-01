// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'problem.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Problem _$ProblemFromJson(Map<String, dynamic> json) {
  return _Problem.fromJson(json);
}

/// @nodoc
class _$ProblemTearOff {
  const _$ProblemTearOff();

  _Problem call(
      {required String code,
      required String authorId,
      String title = '',
      String body = '',
      int point = 0,
      int solvedCriterion = 0,
      String? previousProblemId}) {
    return _Problem(
      code: code,
      authorId: authorId,
      title: title,
      body: body,
      point: point,
      solvedCriterion: solvedCriterion,
      previousProblemId: previousProblemId,
    );
  }

  Problem fromJson(Map<String, Object> json) {
    return Problem.fromJson(json);
  }
}

/// @nodoc
const $Problem = _$ProblemTearOff();

/// @nodoc
mixin _$Problem {
  String get code => throw _privateConstructorUsedError;
  String get authorId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  int get point => throw _privateConstructorUsedError;
  int get solvedCriterion => throw _privateConstructorUsedError;
  String? get previousProblemId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProblemCopyWith<Problem> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProblemCopyWith<$Res> {
  factory $ProblemCopyWith(Problem value, $Res Function(Problem) then) =
      _$ProblemCopyWithImpl<$Res>;
  $Res call(
      {String code,
      String authorId,
      String title,
      String body,
      int point,
      int solvedCriterion,
      String? previousProblemId});
}

/// @nodoc
class _$ProblemCopyWithImpl<$Res> implements $ProblemCopyWith<$Res> {
  _$ProblemCopyWithImpl(this._value, this._then);

  final Problem _value;
  // ignore: unused_field
  final $Res Function(Problem) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? authorId = freezed,
    Object? title = freezed,
    Object? body = freezed,
    Object? point = freezed,
    Object? solvedCriterion = freezed,
    Object? previousProblemId = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      authorId: authorId == freezed
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      point: point == freezed
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as int,
      solvedCriterion: solvedCriterion == freezed
          ? _value.solvedCriterion
          : solvedCriterion // ignore: cast_nullable_to_non_nullable
              as int,
      previousProblemId: previousProblemId == freezed
          ? _value.previousProblemId
          : previousProblemId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ProblemCopyWith<$Res> implements $ProblemCopyWith<$Res> {
  factory _$ProblemCopyWith(_Problem value, $Res Function(_Problem) then) =
      __$ProblemCopyWithImpl<$Res>;
  @override
  $Res call(
      {String code,
      String authorId,
      String title,
      String body,
      int point,
      int solvedCriterion,
      String? previousProblemId});
}

/// @nodoc
class __$ProblemCopyWithImpl<$Res> extends _$ProblemCopyWithImpl<$Res>
    implements _$ProblemCopyWith<$Res> {
  __$ProblemCopyWithImpl(_Problem _value, $Res Function(_Problem) _then)
      : super(_value, (v) => _then(v as _Problem));

  @override
  _Problem get _value => super._value as _Problem;

  @override
  $Res call({
    Object? code = freezed,
    Object? authorId = freezed,
    Object? title = freezed,
    Object? body = freezed,
    Object? point = freezed,
    Object? solvedCriterion = freezed,
    Object? previousProblemId = freezed,
  }) {
    return _then(_Problem(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      authorId: authorId == freezed
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      point: point == freezed
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as int,
      solvedCriterion: solvedCriterion == freezed
          ? _value.solvedCriterion
          : solvedCriterion // ignore: cast_nullable_to_non_nullable
              as int,
      previousProblemId: previousProblemId == freezed
          ? _value.previousProblemId
          : previousProblemId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Problem with DiagnosticableTreeMixin implements _Problem {
  const _$_Problem(
      {required this.code,
      required this.authorId,
      this.title = '',
      this.body = '',
      this.point = 0,
      this.solvedCriterion = 0,
      this.previousProblemId});

  factory _$_Problem.fromJson(Map<String, dynamic> json) =>
      _$_$_ProblemFromJson(json);

  @override
  final String code;
  @override
  final String authorId;
  @JsonKey(defaultValue: '')
  @override
  final String title;
  @JsonKey(defaultValue: '')
  @override
  final String body;
  @JsonKey(defaultValue: 0)
  @override
  final int point;
  @JsonKey(defaultValue: 0)
  @override
  final int solvedCriterion;
  @override
  final String? previousProblemId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Problem(code: $code, authorId: $authorId, title: $title, body: $body, point: $point, solvedCriterion: $solvedCriterion, previousProblemId: $previousProblemId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Problem'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('authorId', authorId))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('body', body))
      ..add(DiagnosticsProperty('point', point))
      ..add(DiagnosticsProperty('solvedCriterion', solvedCriterion))
      ..add(DiagnosticsProperty('previousProblemId', previousProblemId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Problem &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.authorId, authorId) ||
                const DeepCollectionEquality()
                    .equals(other.authorId, authorId)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.point, point) ||
                const DeepCollectionEquality().equals(other.point, point)) &&
            (identical(other.solvedCriterion, solvedCriterion) ||
                const DeepCollectionEquality()
                    .equals(other.solvedCriterion, solvedCriterion)) &&
            (identical(other.previousProblemId, previousProblemId) ||
                const DeepCollectionEquality()
                    .equals(other.previousProblemId, previousProblemId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(authorId) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(point) ^
      const DeepCollectionEquality().hash(solvedCriterion) ^
      const DeepCollectionEquality().hash(previousProblemId);

  @JsonKey(ignore: true)
  @override
  _$ProblemCopyWith<_Problem> get copyWith =>
      __$ProblemCopyWithImpl<_Problem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProblemToJson(this);
  }
}

abstract class _Problem implements Problem {
  const factory _Problem(
      {required String code,
      required String authorId,
      String title,
      String body,
      int point,
      int solvedCriterion,
      String? previousProblemId}) = _$_Problem;

  factory _Problem.fromJson(Map<String, dynamic> json) = _$_Problem.fromJson;

  @override
  String get code => throw _privateConstructorUsedError;
  @override
  String get authorId => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get body => throw _privateConstructorUsedError;
  @override
  int get point => throw _privateConstructorUsedError;
  @override
  int get solvedCriterion => throw _privateConstructorUsedError;
  @override
  String? get previousProblemId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProblemCopyWith<_Problem> get copyWith =>
      throw _privateConstructorUsedError;
}
