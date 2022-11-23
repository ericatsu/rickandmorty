// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fluttergraphql/graphql/__generated__/locationDetails.ast.gql.dart'
    as _i5;
import 'package:fluttergraphql/graphql/__generated__/locationDetails.data.gql.dart'
    as _i2;
import 'package:fluttergraphql/graphql/__generated__/locationDetails.var.gql.dart'
    as _i3;
import 'package:fluttergraphql/graphql/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'locationDetails.req.gql.g.dart';

abstract class GLocationDetailsReq
    implements
        Built<GLocationDetailsReq, GLocationDetailsReqBuilder>,
        _i1.OperationRequest<_i2.GLocationDetailsData,
            _i3.GLocationDetailsVars> {
  GLocationDetailsReq._();

  factory GLocationDetailsReq(
      [Function(GLocationDetailsReqBuilder b) updates]) = _$GLocationDetailsReq;

  static void _initializeBuilder(GLocationDetailsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'LocationDetails',
    )
    ..executeOnListen = true;
  @override
  _i3.GLocationDetailsVars get vars;
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
  _i2.GLocationDetailsData? Function(
    _i2.GLocationDetailsData?,
    _i2.GLocationDetailsData?,
  )? get updateResult;
  @override
  _i2.GLocationDetailsData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GLocationDetailsData? parseData(Map<String, dynamic> json) =>
      _i2.GLocationDetailsData.fromJson(json);
  static Serializer<GLocationDetailsReq> get serializer =>
      _$gLocationDetailsReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GLocationDetailsReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GLocationDetailsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GLocationDetailsReq.serializer,
        json,
      );
}
