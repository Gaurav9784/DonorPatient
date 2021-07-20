///
//  Generated code. Do not modify.
//  source: service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'service.pb.dart' as $0;
export 'service.pb.dart';

class AddServiceClient extends $grpc.Client {
  static final _$createuser = $grpc.ClientMethod<$0.User, $0.User>(
      '/proto.AddService/createuser',
      ($0.User value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.User.fromBuffer(value));
  static final _$loginuser = $grpc.ClientMethod<$0.User, $0.User>(
      '/proto.AddService/loginuser',
      ($0.User value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.User.fromBuffer(value));
  static final _$deleteuser = $grpc.ClientMethod<$0.User, $0.User>(
      '/proto.AddService/deleteuser',
      ($0.User value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.User.fromBuffer(value));
  static final _$getuser = $grpc.ClientMethod<$0.User, $0.GetUserDetails>(
      '/proto.AddService/getuser',
      ($0.User value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetUserDetails.fromBuffer(value));
  static final _$updatecontactdetails = $grpc.ClientMethod<$0.User, $0.User>(
      '/proto.AddService/updatecontactdetails',
      ($0.User value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.User.fromBuffer(value));
  static final _$getallpatients = $grpc.ClientMethod<$0.User, $0.UserSlice>(
      '/proto.AddService/getallpatients',
      ($0.User value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UserSlice.fromBuffer(value));
  static final _$getalldonors = $grpc.ClientMethod<$0.User, $0.UserSlice>(
      '/proto.AddService/getalldonors',
      ($0.User value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UserSlice.fromBuffer(value));
  static final _$sendrequest = $grpc.ClientMethod<$0.User, $0.User>(
      '/proto.AddService/sendrequest',
      ($0.User value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.User.fromBuffer(value));
  static final _$acceptrequest = $grpc.ClientMethod<$0.User, $0.User>(
      '/proto.AddService/acceptrequest',
      ($0.User value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.User.fromBuffer(value));
  static final _$cancelconnection = $grpc.ClientMethod<$0.User, $0.User>(
      '/proto.AddService/cancelconnection',
      ($0.User value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.User.fromBuffer(value));
  static final _$cancelrequest = $grpc.ClientMethod<$0.User, $0.User>(
      '/proto.AddService/cancelrequest',
      ($0.User value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.User.fromBuffer(value));

  AddServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.User> createuser($0.User request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createuser, request, options: options);
  }

  $grpc.ResponseFuture<$0.User> loginuser($0.User request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$loginuser, request, options: options);
  }

  $grpc.ResponseFuture<$0.User> deleteuser($0.User request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteuser, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetUserDetails> getuser($0.User request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getuser, request, options: options);
  }

  $grpc.ResponseFuture<$0.User> updatecontactdetails($0.User request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updatecontactdetails, request, options: options);
  }

  $grpc.ResponseFuture<$0.UserSlice> getallpatients($0.User request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getallpatients, request, options: options);
  }

  $grpc.ResponseFuture<$0.UserSlice> getalldonors($0.User request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getalldonors, request, options: options);
  }

  $grpc.ResponseFuture<$0.User> sendrequest($0.User request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sendrequest, request, options: options);
  }

  $grpc.ResponseFuture<$0.User> acceptrequest($0.User request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$acceptrequest, request, options: options);
  }

  $grpc.ResponseFuture<$0.User> cancelconnection($0.User request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$cancelconnection, request, options: options);
  }

  $grpc.ResponseFuture<$0.User> cancelrequest($0.User request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$cancelrequest, request, options: options);
  }
}

abstract class AddServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.AddService';

  AddServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.User, $0.User>(
        'createuser',
        createuser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.User.fromBuffer(value),
        ($0.User value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.User, $0.User>(
        'loginuser',
        loginuser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.User.fromBuffer(value),
        ($0.User value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.User, $0.User>(
        'deleteuser',
        deleteuser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.User.fromBuffer(value),
        ($0.User value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.User, $0.GetUserDetails>(
        'getuser',
        getuser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.User.fromBuffer(value),
        ($0.GetUserDetails value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.User, $0.User>(
        'updatecontactdetails',
        updatecontactdetails_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.User.fromBuffer(value),
        ($0.User value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.User, $0.UserSlice>(
        'getallpatients',
        getallpatients_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.User.fromBuffer(value),
        ($0.UserSlice value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.User, $0.UserSlice>(
        'getalldonors',
        getalldonors_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.User.fromBuffer(value),
        ($0.UserSlice value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.User, $0.User>(
        'sendrequest',
        sendrequest_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.User.fromBuffer(value),
        ($0.User value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.User, $0.User>(
        'acceptrequest',
        acceptrequest_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.User.fromBuffer(value),
        ($0.User value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.User, $0.User>(
        'cancelconnection',
        cancelconnection_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.User.fromBuffer(value),
        ($0.User value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.User, $0.User>(
        'cancelrequest',
        cancelrequest_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.User.fromBuffer(value),
        ($0.User value) => value.writeToBuffer()));
  }

  $async.Future<$0.User> createuser_Pre(
      $grpc.ServiceCall call, $async.Future<$0.User> request) async {
    return createuser(call, await request);
  }

  $async.Future<$0.User> loginuser_Pre(
      $grpc.ServiceCall call, $async.Future<$0.User> request) async {
    return loginuser(call, await request);
  }

  $async.Future<$0.User> deleteuser_Pre(
      $grpc.ServiceCall call, $async.Future<$0.User> request) async {
    return deleteuser(call, await request);
  }

  $async.Future<$0.GetUserDetails> getuser_Pre(
      $grpc.ServiceCall call, $async.Future<$0.User> request) async {
    return getuser(call, await request);
  }

  $async.Future<$0.User> updatecontactdetails_Pre(
      $grpc.ServiceCall call, $async.Future<$0.User> request) async {
    return updatecontactdetails(call, await request);
  }

  $async.Future<$0.UserSlice> getallpatients_Pre(
      $grpc.ServiceCall call, $async.Future<$0.User> request) async {
    return getallpatients(call, await request);
  }

  $async.Future<$0.UserSlice> getalldonors_Pre(
      $grpc.ServiceCall call, $async.Future<$0.User> request) async {
    return getalldonors(call, await request);
  }

  $async.Future<$0.User> sendrequest_Pre(
      $grpc.ServiceCall call, $async.Future<$0.User> request) async {
    return sendrequest(call, await request);
  }

  $async.Future<$0.User> acceptrequest_Pre(
      $grpc.ServiceCall call, $async.Future<$0.User> request) async {
    return acceptrequest(call, await request);
  }

  $async.Future<$0.User> cancelconnection_Pre(
      $grpc.ServiceCall call, $async.Future<$0.User> request) async {
    return cancelconnection(call, await request);
  }

  $async.Future<$0.User> cancelrequest_Pre(
      $grpc.ServiceCall call, $async.Future<$0.User> request) async {
    return cancelrequest(call, await request);
  }

  $async.Future<$0.User> createuser($grpc.ServiceCall call, $0.User request);
  $async.Future<$0.User> loginuser($grpc.ServiceCall call, $0.User request);
  $async.Future<$0.User> deleteuser($grpc.ServiceCall call, $0.User request);
  $async.Future<$0.GetUserDetails> getuser(
      $grpc.ServiceCall call, $0.User request);
  $async.Future<$0.User> updatecontactdetails(
      $grpc.ServiceCall call, $0.User request);
  $async.Future<$0.UserSlice> getallpatients(
      $grpc.ServiceCall call, $0.User request);
  $async.Future<$0.UserSlice> getalldonors(
      $grpc.ServiceCall call, $0.User request);
  $async.Future<$0.User> sendrequest($grpc.ServiceCall call, $0.User request);
  $async.Future<$0.User> acceptrequest($grpc.ServiceCall call, $0.User request);
  $async.Future<$0.User> cancelconnection(
      $grpc.ServiceCall call, $0.User request);
  $async.Future<$0.User> cancelrequest($grpc.ServiceCall call, $0.User request);
}
