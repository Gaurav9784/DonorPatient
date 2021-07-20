///
//  Generated code. Do not modify.
//  source: service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class User extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'User', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UserId', protoName: 'User_Id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'SecretCode', protoName: 'Secret_Code')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Name', protoName: 'Name')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'PhoneNumber', protoName: 'Phone_Number')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Age', protoName: 'Age')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Address', protoName: 'Address')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UserType', protoName: 'User_Type')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Email', protoName: 'Email')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Disease', protoName: 'Disease')
    ..m<$core.String, $fixnum.Int64>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'RequestedUser', protoName: 'Requested_User', entryClassName: 'User.RequestedUserEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.O6, packageName: const $pb.PackageName('proto'))
    ..m<$core.String, $fixnum.Int64>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'PendingRequest', protoName: 'Pending_Request', entryClassName: 'User.PendingRequestEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.O6, packageName: const $pb.PackageName('proto'))
    ..m<$core.String, $fixnum.Int64>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ConnectedUser', protoName: 'Connected_User', entryClassName: 'User.ConnectedUserEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.O6, packageName: const $pb.PackageName('proto'))
    ..hasRequiredFields = false
  ;

  User._() : super();
  factory User({
    $core.String? userId,
    $core.String? secretCode,
    $core.String? name,
    $core.String? phoneNumber,
    $core.String? age,
    $core.String? address,
    $core.String? userType,
    $core.String? email,
    $core.String? disease,
    $core.Map<$core.String, $fixnum.Int64>? requestedUser,
    $core.Map<$core.String, $fixnum.Int64>? pendingRequest,
    $core.Map<$core.String, $fixnum.Int64>? connectedUser,
  }) {
    final _result = create();
    if (userId != null) {
      _result.userId = userId;
    }
    if (secretCode != null) {
      _result.secretCode = secretCode;
    }
    if (name != null) {
      _result.name = name;
    }
    if (phoneNumber != null) {
      _result.phoneNumber = phoneNumber;
    }
    if (age != null) {
      _result.age = age;
    }
    if (address != null) {
      _result.address = address;
    }
    if (userType != null) {
      _result.userType = userType;
    }
    if (email != null) {
      _result.email = email;
    }
    if (disease != null) {
      _result.disease = disease;
    }
    if (requestedUser != null) {
      _result.requestedUser.addAll(requestedUser);
    }
    if (pendingRequest != null) {
      _result.pendingRequest.addAll(pendingRequest);
    }
    if (connectedUser != null) {
      _result.connectedUser.addAll(connectedUser);
    }
    return _result;
  }
  factory User.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory User.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  User clone() => User()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  User copyWith(void Function(User) updates) => super.copyWith((message) => updates(message as User)) as User; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static User create() => User._();
  User createEmptyInstance() => create();
  static $pb.PbList<User> createRepeated() => $pb.PbList<User>();
  @$core.pragma('dart2js:noInline')
  static User getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<User>(create);
  static User? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get secretCode => $_getSZ(1);
  @$pb.TagNumber(2)
  set secretCode($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSecretCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearSecretCode() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get phoneNumber => $_getSZ(3);
  @$pb.TagNumber(4)
  set phoneNumber($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPhoneNumber() => $_has(3);
  @$pb.TagNumber(4)
  void clearPhoneNumber() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get age => $_getSZ(4);
  @$pb.TagNumber(5)
  set age($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAge() => $_has(4);
  @$pb.TagNumber(5)
  void clearAge() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get address => $_getSZ(5);
  @$pb.TagNumber(6)
  set address($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAddress() => $_has(5);
  @$pb.TagNumber(6)
  void clearAddress() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get userType => $_getSZ(6);
  @$pb.TagNumber(7)
  set userType($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasUserType() => $_has(6);
  @$pb.TagNumber(7)
  void clearUserType() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get email => $_getSZ(7);
  @$pb.TagNumber(8)
  set email($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasEmail() => $_has(7);
  @$pb.TagNumber(8)
  void clearEmail() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get disease => $_getSZ(8);
  @$pb.TagNumber(9)
  set disease($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasDisease() => $_has(8);
  @$pb.TagNumber(9)
  void clearDisease() => clearField(9);

  @$pb.TagNumber(10)
  $core.Map<$core.String, $fixnum.Int64> get requestedUser => $_getMap(9);

  @$pb.TagNumber(11)
  $core.Map<$core.String, $fixnum.Int64> get pendingRequest => $_getMap(10);

  @$pb.TagNumber(12)
  $core.Map<$core.String, $fixnum.Int64> get connectedUser => $_getMap(11);
}

class GetUserDetails extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetUserDetails', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UserId', protoName: 'User_Id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Name', protoName: 'Name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'PhoneNumber', protoName: 'Phone_Number')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Age', protoName: 'Age')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Address', protoName: 'Address')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UserType', protoName: 'User_Type')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Email', protoName: 'Email')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Disease', protoName: 'Disease')
    ..hasRequiredFields = false
  ;

  GetUserDetails._() : super();
  factory GetUserDetails({
    $core.String? userId,
    $core.String? name,
    $core.String? phoneNumber,
    $core.String? age,
    $core.String? address,
    $core.String? userType,
    $core.String? email,
    $core.String? disease,
  }) {
    final _result = create();
    if (userId != null) {
      _result.userId = userId;
    }
    if (name != null) {
      _result.name = name;
    }
    if (phoneNumber != null) {
      _result.phoneNumber = phoneNumber;
    }
    if (age != null) {
      _result.age = age;
    }
    if (address != null) {
      _result.address = address;
    }
    if (userType != null) {
      _result.userType = userType;
    }
    if (email != null) {
      _result.email = email;
    }
    if (disease != null) {
      _result.disease = disease;
    }
    return _result;
  }
  factory GetUserDetails.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetUserDetails.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetUserDetails clone() => GetUserDetails()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetUserDetails copyWith(void Function(GetUserDetails) updates) => super.copyWith((message) => updates(message as GetUserDetails)) as GetUserDetails; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetUserDetails create() => GetUserDetails._();
  GetUserDetails createEmptyInstance() => create();
  static $pb.PbList<GetUserDetails> createRepeated() => $pb.PbList<GetUserDetails>();
  @$core.pragma('dart2js:noInline')
  static GetUserDetails getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetUserDetails>(create);
  static GetUserDetails? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get phoneNumber => $_getSZ(2);
  @$pb.TagNumber(3)
  set phoneNumber($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPhoneNumber() => $_has(2);
  @$pb.TagNumber(3)
  void clearPhoneNumber() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get age => $_getSZ(3);
  @$pb.TagNumber(4)
  set age($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAge() => $_has(3);
  @$pb.TagNumber(4)
  void clearAge() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get address => $_getSZ(4);
  @$pb.TagNumber(5)
  set address($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAddress() => $_has(4);
  @$pb.TagNumber(5)
  void clearAddress() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get userType => $_getSZ(5);
  @$pb.TagNumber(6)
  set userType($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasUserType() => $_has(5);
  @$pb.TagNumber(6)
  void clearUserType() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get email => $_getSZ(6);
  @$pb.TagNumber(7)
  set email($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasEmail() => $_has(6);
  @$pb.TagNumber(7)
  void clearEmail() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get disease => $_getSZ(7);
  @$pb.TagNumber(8)
  set disease($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasDisease() => $_has(7);
  @$pb.TagNumber(8)
  void clearDisease() => clearField(8);
}

class UserSlice extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserSlice', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto'), createEmptyInstance: create)
    ..pc<GetUserDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userslice', $pb.PbFieldType.PM, subBuilder: GetUserDetails.create)
    ..hasRequiredFields = false
  ;

  UserSlice._() : super();
  factory UserSlice({
    $core.Iterable<GetUserDetails>? userslice,
  }) {
    final _result = create();
    if (userslice != null) {
      _result.userslice.addAll(userslice);
    }
    return _result;
  }
  factory UserSlice.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserSlice.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserSlice clone() => UserSlice()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserSlice copyWith(void Function(UserSlice) updates) => super.copyWith((message) => updates(message as UserSlice)) as UserSlice; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserSlice create() => UserSlice._();
  UserSlice createEmptyInstance() => create();
  static $pb.PbList<UserSlice> createRepeated() => $pb.PbList<UserSlice>();
  @$core.pragma('dart2js:noInline')
  static UserSlice getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserSlice>(create);
  static UserSlice? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GetUserDetails> get userslice => $_getList(0);
}

