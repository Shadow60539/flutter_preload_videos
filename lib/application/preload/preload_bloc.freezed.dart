// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'preload_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PreloadEventTearOff {
  const _$PreloadEventTearOff();

  _Initialize initialize() {
    return const _Initialize();
  }

  _OnVideoIndexChanged onVideoIndexChanged(int index) {
    return _OnVideoIndexChanged(
      index,
    );
  }
}

/// @nodoc
const $PreloadEvent = _$PreloadEventTearOff();

/// @nodoc
mixin _$PreloadEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(int index) onVideoIndexChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(int index)? onVideoIndexChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_OnVideoIndexChanged value) onVideoIndexChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_OnVideoIndexChanged value)? onVideoIndexChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreloadEventCopyWith<$Res> {
  factory $PreloadEventCopyWith(
          PreloadEvent value, $Res Function(PreloadEvent) then) =
      _$PreloadEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PreloadEventCopyWithImpl<$Res> implements $PreloadEventCopyWith<$Res> {
  _$PreloadEventCopyWithImpl(this._value, this._then);

  final PreloadEvent _value;
  // ignore: unused_field
  final $Res Function(PreloadEvent) _then;
}

/// @nodoc
abstract class _$InitializeCopyWith<$Res> {
  factory _$InitializeCopyWith(
          _Initialize value, $Res Function(_Initialize) then) =
      __$InitializeCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitializeCopyWithImpl<$Res> extends _$PreloadEventCopyWithImpl<$Res>
    implements _$InitializeCopyWith<$Res> {
  __$InitializeCopyWithImpl(
      _Initialize _value, $Res Function(_Initialize) _then)
      : super(_value, (v) => _then(v as _Initialize));

  @override
  _Initialize get _value => super._value as _Initialize;
}

/// @nodoc

class _$_Initialize implements _Initialize {
  const _$_Initialize();

  @override
  String toString() {
    return 'PreloadEvent.initialize()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initialize);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(int index) onVideoIndexChanged,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(int index)? onVideoIndexChanged,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_OnVideoIndexChanged value) onVideoIndexChanged,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_OnVideoIndexChanged value)? onVideoIndexChanged,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _Initialize implements PreloadEvent {
  const factory _Initialize() = _$_Initialize;
}

/// @nodoc
abstract class _$OnVideoIndexChangedCopyWith<$Res> {
  factory _$OnVideoIndexChangedCopyWith(_OnVideoIndexChanged value,
          $Res Function(_OnVideoIndexChanged) then) =
      __$OnVideoIndexChangedCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$OnVideoIndexChangedCopyWithImpl<$Res>
    extends _$PreloadEventCopyWithImpl<$Res>
    implements _$OnVideoIndexChangedCopyWith<$Res> {
  __$OnVideoIndexChangedCopyWithImpl(
      _OnVideoIndexChanged _value, $Res Function(_OnVideoIndexChanged) _then)
      : super(_value, (v) => _then(v as _OnVideoIndexChanged));

  @override
  _OnVideoIndexChanged get _value => super._value as _OnVideoIndexChanged;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_OnVideoIndexChanged(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_OnVideoIndexChanged implements _OnVideoIndexChanged {
  const _$_OnVideoIndexChanged(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'PreloadEvent.onVideoIndexChanged(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnVideoIndexChanged &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  _$OnVideoIndexChangedCopyWith<_OnVideoIndexChanged> get copyWith =>
      __$OnVideoIndexChangedCopyWithImpl<_OnVideoIndexChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(int index) onVideoIndexChanged,
  }) {
    return onVideoIndexChanged(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(int index)? onVideoIndexChanged,
    required TResult orElse(),
  }) {
    if (onVideoIndexChanged != null) {
      return onVideoIndexChanged(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_OnVideoIndexChanged value) onVideoIndexChanged,
  }) {
    return onVideoIndexChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_OnVideoIndexChanged value)? onVideoIndexChanged,
    required TResult orElse(),
  }) {
    if (onVideoIndexChanged != null) {
      return onVideoIndexChanged(this);
    }
    return orElse();
  }
}

abstract class _OnVideoIndexChanged implements PreloadEvent {
  const factory _OnVideoIndexChanged(int index) = _$_OnVideoIndexChanged;

  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OnVideoIndexChangedCopyWith<_OnVideoIndexChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PreloadStateTearOff {
  const _$PreloadStateTearOff();

  _PreloadState call(
      {required List<String> urls,
      required Map<int, VideoPlayerController> controllers,
      required int focusedIndex}) {
    return _PreloadState(
      urls: urls,
      controllers: controllers,
      focusedIndex: focusedIndex,
    );
  }
}

/// @nodoc
const $PreloadState = _$PreloadStateTearOff();

/// @nodoc
mixin _$PreloadState {
  List<String> get urls => throw _privateConstructorUsedError;
  Map<int, VideoPlayerController> get controllers =>
      throw _privateConstructorUsedError;
  int get focusedIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PreloadStateCopyWith<PreloadState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreloadStateCopyWith<$Res> {
  factory $PreloadStateCopyWith(
          PreloadState value, $Res Function(PreloadState) then) =
      _$PreloadStateCopyWithImpl<$Res>;
  $Res call(
      {List<String> urls,
      Map<int, VideoPlayerController> controllers,
      int focusedIndex});
}

/// @nodoc
class _$PreloadStateCopyWithImpl<$Res> implements $PreloadStateCopyWith<$Res> {
  _$PreloadStateCopyWithImpl(this._value, this._then);

  final PreloadState _value;
  // ignore: unused_field
  final $Res Function(PreloadState) _then;

  @override
  $Res call({
    Object? urls = freezed,
    Object? controllers = freezed,
    Object? focusedIndex = freezed,
  }) {
    return _then(_value.copyWith(
      urls: urls == freezed
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      controllers: controllers == freezed
          ? _value.controllers
          : controllers // ignore: cast_nullable_to_non_nullable
              as Map<int, VideoPlayerController>,
      focusedIndex: focusedIndex == freezed
          ? _value.focusedIndex
          : focusedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$PreloadStateCopyWith<$Res>
    implements $PreloadStateCopyWith<$Res> {
  factory _$PreloadStateCopyWith(
          _PreloadState value, $Res Function(_PreloadState) then) =
      __$PreloadStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<String> urls,
      Map<int, VideoPlayerController> controllers,
      int focusedIndex});
}

/// @nodoc
class __$PreloadStateCopyWithImpl<$Res> extends _$PreloadStateCopyWithImpl<$Res>
    implements _$PreloadStateCopyWith<$Res> {
  __$PreloadStateCopyWithImpl(
      _PreloadState _value, $Res Function(_PreloadState) _then)
      : super(_value, (v) => _then(v as _PreloadState));

  @override
  _PreloadState get _value => super._value as _PreloadState;

  @override
  $Res call({
    Object? urls = freezed,
    Object? controllers = freezed,
    Object? focusedIndex = freezed,
  }) {
    return _then(_PreloadState(
      urls: urls == freezed
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      controllers: controllers == freezed
          ? _value.controllers
          : controllers // ignore: cast_nullable_to_non_nullable
              as Map<int, VideoPlayerController>,
      focusedIndex: focusedIndex == freezed
          ? _value.focusedIndex
          : focusedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PreloadState implements _PreloadState {
  const _$_PreloadState(
      {required this.urls,
      required this.controllers,
      required this.focusedIndex});

  @override
  final List<String> urls;
  @override
  final Map<int, VideoPlayerController> controllers;
  @override
  final int focusedIndex;

  @override
  String toString() {
    return 'PreloadState(urls: $urls, controllers: $controllers, focusedIndex: $focusedIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PreloadState &&
            (identical(other.urls, urls) ||
                const DeepCollectionEquality().equals(other.urls, urls)) &&
            (identical(other.controllers, controllers) ||
                const DeepCollectionEquality()
                    .equals(other.controllers, controllers)) &&
            (identical(other.focusedIndex, focusedIndex) ||
                const DeepCollectionEquality()
                    .equals(other.focusedIndex, focusedIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(urls) ^
      const DeepCollectionEquality().hash(controllers) ^
      const DeepCollectionEquality().hash(focusedIndex);

  @JsonKey(ignore: true)
  @override
  _$PreloadStateCopyWith<_PreloadState> get copyWith =>
      __$PreloadStateCopyWithImpl<_PreloadState>(this, _$identity);
}

abstract class _PreloadState implements PreloadState {
  const factory _PreloadState(
      {required List<String> urls,
      required Map<int, VideoPlayerController> controllers,
      required int focusedIndex}) = _$_PreloadState;

  @override
  List<String> get urls => throw _privateConstructorUsedError;
  @override
  Map<int, VideoPlayerController> get controllers =>
      throw _privateConstructorUsedError;
  @override
  int get focusedIndex => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PreloadStateCopyWith<_PreloadState> get copyWith =>
      throw _privateConstructorUsedError;
}
