// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'drawer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DrawerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() open,
    required TResult Function() close,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? open,
    TResult? Function()? close,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? open,
    TResult Function()? close,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Open value) open,
    required TResult Function(Close value) close,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Open value)? open,
    TResult? Function(Close value)? close,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Open value)? open,
    TResult Function(Close value)? close,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrawerEventCopyWith<$Res> {
  factory $DrawerEventCopyWith(
          DrawerEvent value, $Res Function(DrawerEvent) then) =
      _$DrawerEventCopyWithImpl<$Res, DrawerEvent>;
}

/// @nodoc
class _$DrawerEventCopyWithImpl<$Res, $Val extends DrawerEvent>
    implements $DrawerEventCopyWith<$Res> {
  _$DrawerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DrawerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$OpenImplCopyWith<$Res> {
  factory _$$OpenImplCopyWith(
          _$OpenImpl value, $Res Function(_$OpenImpl) then) =
      __$$OpenImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OpenImplCopyWithImpl<$Res>
    extends _$DrawerEventCopyWithImpl<$Res, _$OpenImpl>
    implements _$$OpenImplCopyWith<$Res> {
  __$$OpenImplCopyWithImpl(_$OpenImpl _value, $Res Function(_$OpenImpl) _then)
      : super(_value, _then);

  /// Create a copy of DrawerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OpenImpl implements Open {
  const _$OpenImpl();

  @override
  String toString() {
    return 'DrawerEvent.open()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OpenImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() open,
    required TResult Function() close,
  }) {
    return open();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? open,
    TResult? Function()? close,
  }) {
    return open?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? open,
    TResult Function()? close,
    required TResult orElse(),
  }) {
    if (open != null) {
      return open();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Open value) open,
    required TResult Function(Close value) close,
  }) {
    return open(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Open value)? open,
    TResult? Function(Close value)? close,
  }) {
    return open?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Open value)? open,
    TResult Function(Close value)? close,
    required TResult orElse(),
  }) {
    if (open != null) {
      return open(this);
    }
    return orElse();
  }
}

abstract class Open implements DrawerEvent {
  const factory Open() = _$OpenImpl;
}

/// @nodoc
abstract class _$$CloseImplCopyWith<$Res> {
  factory _$$CloseImplCopyWith(
          _$CloseImpl value, $Res Function(_$CloseImpl) then) =
      __$$CloseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CloseImplCopyWithImpl<$Res>
    extends _$DrawerEventCopyWithImpl<$Res, _$CloseImpl>
    implements _$$CloseImplCopyWith<$Res> {
  __$$CloseImplCopyWithImpl(
      _$CloseImpl _value, $Res Function(_$CloseImpl) _then)
      : super(_value, _then);

  /// Create a copy of DrawerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CloseImpl implements Close {
  const _$CloseImpl();

  @override
  String toString() {
    return 'DrawerEvent.close()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CloseImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() open,
    required TResult Function() close,
  }) {
    return close();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? open,
    TResult? Function()? close,
  }) {
    return close?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? open,
    TResult Function()? close,
    required TResult orElse(),
  }) {
    if (close != null) {
      return close();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Open value) open,
    required TResult Function(Close value) close,
  }) {
    return close(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Open value)? open,
    TResult? Function(Close value)? close,
  }) {
    return close?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Open value)? open,
    TResult Function(Close value)? close,
    required TResult orElse(),
  }) {
    if (close != null) {
      return close(this);
    }
    return orElse();
  }
}

abstract class Close implements DrawerEvent {
  const factory Close() = _$CloseImpl;
}

/// @nodoc
mixin _$DrawerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() opened,
    required TResult Function() closed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? opened,
    TResult? Function()? closed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? opened,
    TResult Function()? closed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Opened value) opened,
    required TResult Function(Closed value) closed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Opened value)? opened,
    TResult? Function(Closed value)? closed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Opened value)? opened,
    TResult Function(Closed value)? closed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrawerStateCopyWith<$Res> {
  factory $DrawerStateCopyWith(
          DrawerState value, $Res Function(DrawerState) then) =
      _$DrawerStateCopyWithImpl<$Res, DrawerState>;
}

/// @nodoc
class _$DrawerStateCopyWithImpl<$Res, $Val extends DrawerState>
    implements $DrawerStateCopyWith<$Res> {
  _$DrawerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DrawerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$OpenedImplCopyWith<$Res> {
  factory _$$OpenedImplCopyWith(
          _$OpenedImpl value, $Res Function(_$OpenedImpl) then) =
      __$$OpenedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OpenedImplCopyWithImpl<$Res>
    extends _$DrawerStateCopyWithImpl<$Res, _$OpenedImpl>
    implements _$$OpenedImplCopyWith<$Res> {
  __$$OpenedImplCopyWithImpl(
      _$OpenedImpl _value, $Res Function(_$OpenedImpl) _then)
      : super(_value, _then);

  /// Create a copy of DrawerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OpenedImpl implements Opened {
  const _$OpenedImpl();

  @override
  String toString() {
    return 'DrawerState.opened()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OpenedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() opened,
    required TResult Function() closed,
  }) {
    return opened();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? opened,
    TResult? Function()? closed,
  }) {
    return opened?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? opened,
    TResult Function()? closed,
    required TResult orElse(),
  }) {
    if (opened != null) {
      return opened();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Opened value) opened,
    required TResult Function(Closed value) closed,
  }) {
    return opened(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Opened value)? opened,
    TResult? Function(Closed value)? closed,
  }) {
    return opened?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Opened value)? opened,
    TResult Function(Closed value)? closed,
    required TResult orElse(),
  }) {
    if (opened != null) {
      return opened(this);
    }
    return orElse();
  }
}

abstract class Opened implements DrawerState {
  const factory Opened() = _$OpenedImpl;
}

/// @nodoc
abstract class _$$ClosedImplCopyWith<$Res> {
  factory _$$ClosedImplCopyWith(
          _$ClosedImpl value, $Res Function(_$ClosedImpl) then) =
      __$$ClosedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClosedImplCopyWithImpl<$Res>
    extends _$DrawerStateCopyWithImpl<$Res, _$ClosedImpl>
    implements _$$ClosedImplCopyWith<$Res> {
  __$$ClosedImplCopyWithImpl(
      _$ClosedImpl _value, $Res Function(_$ClosedImpl) _then)
      : super(_value, _then);

  /// Create a copy of DrawerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClosedImpl implements Closed {
  const _$ClosedImpl();

  @override
  String toString() {
    return 'DrawerState.closed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClosedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() opened,
    required TResult Function() closed,
  }) {
    return closed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? opened,
    TResult? Function()? closed,
  }) {
    return closed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? opened,
    TResult Function()? closed,
    required TResult orElse(),
  }) {
    if (closed != null) {
      return closed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Opened value) opened,
    required TResult Function(Closed value) closed,
  }) {
    return closed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Opened value)? opened,
    TResult? Function(Closed value)? closed,
  }) {
    return closed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Opened value)? opened,
    TResult Function(Closed value)? closed,
    required TResult orElse(),
  }) {
    if (closed != null) {
      return closed(this);
    }
    return orElse();
  }
}

abstract class Closed implements DrawerState {
  const factory Closed() = _$ClosedImpl;
}
