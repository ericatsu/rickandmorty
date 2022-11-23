// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fluttergraphql/graphql/__generated__/characterDetails.ast.gql.dart'
    as _i5;
import 'package:fluttergraphql/graphql/__generated__/characterDetails.data.gql.dart'
    as _i2;
import 'package:fluttergraphql/graphql/__generated__/characterDetails.var.gql.dart'
    as _i3;
import 'package:fluttergraphql/graphql/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'characterDetails.req.gql.g.dart';

abstract class GcharacterDetailsReq
    implements
        Built<GcharacterDetailsReq, GcharacterDetailsReqBuilder>,
        _i1.OperationRequest<_i2.GcharacterDetailsData,
            _i3.GcharacterDetailsVars> {
  GcharacterDetailsReq._();

  factory GcharacterDetailsReq(
          [Function(GcharacterDetailsReqBuilder b) updates]) =
      _$GcharacterDetailsReq;

  static void _initializeBuilder(GcharacterDetailsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'characterDetails',
    )
    ..executeOnListen = true;
  @override
  _i3.GcharacterDetailsVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
      );
  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GcharacterDetailsData? Function(
    _i2.GcharacterDetailsData?,
    _i2.GcharacterDetailsData?,
  )? get updateResult;
  @override
  _i2.GcharacterDetailsData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GcharacterDetailsData? parseData(Map<String, dynamic> json) =>
      _i2.GcharacterDetailsData.fromJson(json);
  static Serializer<GcharacterDetailsReq> get serializer =>
      _$gcharacterDetailsReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GcharacterDetailsReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GcharacterDetailsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GcharacterDetailsReq.serializer,
        json,
      );
}
