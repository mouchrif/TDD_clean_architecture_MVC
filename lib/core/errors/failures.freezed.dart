// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() offlineFailure,
    required TResult Function() emptyCachFailure,
    required TResult Function() formatFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? offlineFailure,
    TResult Function()? emptyCachFailure,
    TResult Function()? formatFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? offlineFailure,
    TResult Function()? emptyCachFailure,
    TResult Function()? formatFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(OfflineFailure value) offlineFailure,
    required TResult Function(EmptyCachFailure value) emptyCachFailure,
    required TResult Function(FormatFailure value) formatFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(OfflineFailure value)? offlineFailure,
    TResult Function(EmptyCachFailure value)? emptyCachFailure,
    TResult Function(FormatFailure value)? formatFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(OfflineFailure value)? offlineFailure,
    TResult Function(EmptyCachFailure value)? emptyCachFailure,
    TResult Function(FormatFailure value)? formatFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure _value;
  // ignore: unused_field
  final $Res Function(Failure) _then;
}

/// @nodoc
abstract class _$$ServerFailureCopyWith<$Res> {
  factory _$$ServerFailureCopyWith(
          _$ServerFailure value, $Res Function(_$ServerFailure) then) =
      __$$ServerFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServerFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$$ServerFailureCopyWith<$Res> {
  __$$ServerFailureCopyWithImpl(
      _$ServerFailure _value, $Res Function(_$ServerFailure) _then)
      : super(_value, (v) => _then(v as _$ServerFailure));

  @override
  _$ServerFailure get _value => super._value as _$ServerFailure;
}

/// @nodoc

class _$ServerFailure extends ServerFailure with DiagnosticableTreeMixin {
  const _$ServerFailure() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Failure.serverFailure()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'Failure.serverFailure'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServerFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() offlineFailure,
    required TResult Function() emptyCachFailure,
    required TResult Function() formatFailure,
  }) {
    return serverFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? offlineFailure,
    TResult Function()? emptyCachFailure,
    TResult Function()? formatFailure,
  }) {
    return serverFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? offlineFailure,
    TResult Function()? emptyCachFailure,
    TResult Function()? formatFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(OfflineFailure value) offlineFailure,
    required TResult Function(EmptyCachFailure value) emptyCachFailure,
    required TResult Function(FormatFailure value) formatFailure,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(OfflineFailure value)? offlineFailure,
    TResult Function(EmptyCachFailure value)? emptyCachFailure,
    TResult Function(FormatFailure value)? formatFailure,
  }) {
    return serverFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(OfflineFailure value)? offlineFailure,
    TResult Function(EmptyCachFailure value)? emptyCachFailure,
    TResult Function(FormatFailure value)? formatFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class ServerFailure extends Failure {
  const factory ServerFailure() = _$ServerFailure;
  const ServerFailure._() : super._();
}

/// @nodoc
abstract class _$$OfflineFailureCopyWith<$Res> {
  factory _$$OfflineFailureCopyWith(
          _$OfflineFailure value, $Res Function(_$OfflineFailure) then) =
      __$$OfflineFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OfflineFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$$OfflineFailureCopyWith<$Res> {
  __$$OfflineFailureCopyWithImpl(
      _$OfflineFailure _value, $Res Function(_$OfflineFailure) _then)
      : super(_value, (v) => _then(v as _$OfflineFailure));

  @override
  _$OfflineFailure get _value => super._value as _$OfflineFailure;
}

/// @nodoc

class _$OfflineFailure extends OfflineFailure with DiagnosticableTreeMixin {
  const _$OfflineFailure() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Failure.offlineFailure()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'Failure.offlineFailure'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OfflineFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() offlineFailure,
    required TResult Function() emptyCachFailure,
    required TResult Function() formatFailure,
  }) {
    return offlineFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? offlineFailure,
    TResult Function()? emptyCachFailure,
    TResult Function()? formatFailure,
  }) {
    return offlineFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? offlineFailure,
    TResult Function()? emptyCachFailure,
    TResult Function()? formatFailure,
    required TResult orElse(),
  }) {
    if (offlineFailure != null) {
      return offlineFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(OfflineFailure value) offlineFailure,
    required TResult Function(EmptyCachFailure value) emptyCachFailure,
    required TResult Function(FormatFailure value) formatFailure,
  }) {
    return offlineFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(OfflineFailure value)? offlineFailure,
    TResult Function(EmptyCachFailure value)? emptyCachFailure,
    TResult Function(FormatFailure value)? formatFailure,
  }) {
    return offlineFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(OfflineFailure value)? offlineFailure,
    TResult Function(EmptyCachFailure value)? emptyCachFailure,
    TResult Function(FormatFailure value)? formatFailure,
    required TResult orElse(),
  }) {
    if (offlineFailure != null) {
      return offlineFailure(this);
    }
    return orElse();
  }
}

abstract class OfflineFailure extends Failure {
  const factory OfflineFailure() = _$OfflineFailure;
  const OfflineFailure._() : super._();
}

/// @nodoc
abstract class _$$EmptyCachFailureCopyWith<$Res> {
  factory _$$EmptyCachFailureCopyWith(
          _$EmptyCachFailure value, $Res Function(_$EmptyCachFailure) then) =
      __$$EmptyCachFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyCachFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$$EmptyCachFailureCopyWith<$Res> {
  __$$EmptyCachFailureCopyWithImpl(
      _$EmptyCachFailure _value, $Res Function(_$EmptyCachFailure) _then)
      : super(_value, (v) => _then(v as _$EmptyCachFailure));

  @override
  _$EmptyCachFailure get _value => super._value as _$EmptyCachFailure;
}

/// @nodoc

class _$EmptyCachFailure extends EmptyCachFailure with DiagnosticableTreeMixin {
  const _$EmptyCachFailure() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Failure.emptyCachFailure()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'Failure.emptyCachFailure'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyCachFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() offlineFailure,
    required TResult Function() emptyCachFailure,
    required TResult Function() formatFailure,
  }) {
    return emptyCachFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? offlineFailure,
    TResult Function()? emptyCachFailure,
    TResult Function()? formatFailure,
  }) {
    return emptyCachFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? offlineFailure,
    TResult Function()? emptyCachFailure,
    TResult Function()? formatFailure,
    required TResult orElse(),
  }) {
    if (emptyCachFailure != null) {
      return emptyCachFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(OfflineFailure value) offlineFailure,
    required TResult Function(EmptyCachFailure value) emptyCachFailure,
    required TResult Function(FormatFailure value) formatFailure,
  }) {
    return emptyCachFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(OfflineFailure value)? offlineFailure,
    TResult Function(EmptyCachFailure value)? emptyCachFailure,
    TResult Function(FormatFailure value)? formatFailure,
  }) {
    return emptyCachFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(OfflineFailure value)? offlineFailure,
    TResult Function(EmptyCachFailure value)? emptyCachFailure,
    TResult Function(FormatFailure value)? formatFailure,
    required TResult orElse(),
  }) {
    if (emptyCachFailure != null) {
      return emptyCachFailure(this);
    }
    return orElse();
  }
}

abstract class EmptyCachFailure extends Failure {
  const factory EmptyCachFailure() = _$EmptyCachFailure;
  const EmptyCachFailure._() : super._();
}

/// @nodoc
abstract class _$$FormatFailureCopyWith<$Res> {
  factory _$$FormatFailureCopyWith(
          _$FormatFailure value, $Res Function(_$FormatFailure) then) =
      __$$FormatFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FormatFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$$FormatFailureCopyWith<$Res> {
  __$$FormatFailureCopyWithImpl(
      _$FormatFailure _value, $Res Function(_$FormatFailure) _then)
      : super(_value, (v) => _then(v as _$FormatFailure));

  @override
  _$FormatFailure get _value => super._value as _$FormatFailure;
}

/// @nodoc

class _$FormatFailure extends FormatFailure with DiagnosticableTreeMixin {
  const _$FormatFailure() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Failure.formatFailure()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'Failure.formatFailure'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FormatFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() offlineFailure,
    required TResult Function() emptyCachFailure,
    required TResult Function() formatFailure,
  }) {
    return formatFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? offlineFailure,
    TResult Function()? emptyCachFailure,
    TResult Function()? formatFailure,
  }) {
    return formatFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? offlineFailure,
    TResult Function()? emptyCachFailure,
    TResult Function()? formatFailure,
    required TResult orElse(),
  }) {
    if (formatFailure != null) {
      return formatFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(OfflineFailure value) offlineFailure,
    required TResult Function(EmptyCachFailure value) emptyCachFailure,
    required TResult Function(FormatFailure value) formatFailure,
  }) {
    return formatFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(OfflineFailure value)? offlineFailure,
    TResult Function(EmptyCachFailure value)? emptyCachFailure,
    TResult Function(FormatFailure value)? formatFailure,
  }) {
    return formatFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(OfflineFailure value)? offlineFailure,
    TResult Function(EmptyCachFailure value)? emptyCachFailure,
    TResult Function(FormatFailure value)? formatFailure,
    required TResult orElse(),
  }) {
    if (formatFailure != null) {
      return formatFailure(this);
    }
    return orElse();
  }
}

abstract class FormatFailure extends Failure {
  const factory FormatFailure() = _$FormatFailure;
  const FormatFailure._() : super._();
}
