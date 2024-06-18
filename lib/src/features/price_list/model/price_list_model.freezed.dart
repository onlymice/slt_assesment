// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'price_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PriceListModel _$PriceListModelFromJson(Map<String, dynamic> json) {
  return _PriceListModel.fromJson(json);
}

/// @nodoc
mixin _$PriceListModel {
  @JsonKey(name: 'data')
  List<PriceItemModel> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PriceListModelCopyWith<PriceListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceListModelCopyWith<$Res> {
  factory $PriceListModelCopyWith(
          PriceListModel value, $Res Function(PriceListModel) then) =
      _$PriceListModelCopyWithImpl<$Res, PriceListModel>;
  @useResult
  $Res call({@JsonKey(name: 'data') List<PriceItemModel> items});
}

/// @nodoc
class _$PriceListModelCopyWithImpl<$Res, $Val extends PriceListModel>
    implements $PriceListModelCopyWith<$Res> {
  _$PriceListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<PriceItemModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PriceListModelImplCopyWith<$Res>
    implements $PriceListModelCopyWith<$Res> {
  factory _$$PriceListModelImplCopyWith(_$PriceListModelImpl value,
          $Res Function(_$PriceListModelImpl) then) =
      __$$PriceListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'data') List<PriceItemModel> items});
}

/// @nodoc
class __$$PriceListModelImplCopyWithImpl<$Res>
    extends _$PriceListModelCopyWithImpl<$Res, _$PriceListModelImpl>
    implements _$$PriceListModelImplCopyWith<$Res> {
  __$$PriceListModelImplCopyWithImpl(
      _$PriceListModelImpl _value, $Res Function(_$PriceListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$PriceListModelImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<PriceItemModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PriceListModelImpl implements _PriceListModel {
  const _$PriceListModelImpl(
      {@JsonKey(name: 'data') required final List<PriceItemModel> items})
      : _items = items;

  factory _$PriceListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PriceListModelImplFromJson(json);

  final List<PriceItemModel> _items;
  @override
  @JsonKey(name: 'data')
  List<PriceItemModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'PriceListModel(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PriceListModelImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PriceListModelImplCopyWith<_$PriceListModelImpl> get copyWith =>
      __$$PriceListModelImplCopyWithImpl<_$PriceListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PriceListModelImplToJson(
      this,
    );
  }
}

abstract class _PriceListModel implements PriceListModel {
  const factory _PriceListModel(
          {@JsonKey(name: 'data') required final List<PriceItemModel> items}) =
      _$PriceListModelImpl;

  factory _PriceListModel.fromJson(Map<String, dynamic> json) =
      _$PriceListModelImpl.fromJson;

  @override
  @JsonKey(name: 'data')
  List<PriceItemModel> get items;
  @override
  @JsonKey(ignore: true)
  _$$PriceListModelImplCopyWith<_$PriceListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
