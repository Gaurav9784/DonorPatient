///
//  Generated code. Do not modify.
//  source: service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use userDescriptor instead')
const User$json = const {
  '1': 'User',
  '2': const [
    const {'1': 'User_Id', '3': 1, '4': 1, '5': 9, '10': 'UserId'},
    const {'1': 'Secret_Code', '3': 2, '4': 1, '5': 9, '10': 'SecretCode'},
    const {'1': 'Name', '3': 3, '4': 1, '5': 9, '10': 'Name'},
    const {'1': 'Phone_Number', '3': 4, '4': 1, '5': 9, '10': 'PhoneNumber'},
    const {'1': 'Age', '3': 5, '4': 1, '5': 9, '10': 'Age'},
    const {'1': 'Address', '3': 6, '4': 1, '5': 9, '10': 'Address'},
    const {'1': 'User_Type', '3': 7, '4': 1, '5': 9, '10': 'UserType'},
    const {'1': 'Email', '3': 8, '4': 1, '5': 9, '10': 'Email'},
    const {'1': 'Disease', '3': 9, '4': 1, '5': 9, '10': 'Disease'},
    const {'1': 'Requested_User', '3': 10, '4': 3, '5': 11, '6': '.proto.User.RequestedUserEntry', '10': 'RequestedUser'},
    const {'1': 'Pending_Request', '3': 11, '4': 3, '5': 11, '6': '.proto.User.PendingRequestEntry', '10': 'PendingRequest'},
    const {'1': 'Connected_User', '3': 12, '4': 3, '5': 11, '6': '.proto.User.ConnectedUserEntry', '10': 'ConnectedUser'},
  ],
  '3': const [User_RequestedUserEntry$json, User_PendingRequestEntry$json, User_ConnectedUserEntry$json],
};

@$core.Deprecated('Use userDescriptor instead')
const User_RequestedUserEntry$json = const {
  '1': 'RequestedUserEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 3, '10': 'value'},
  ],
  '7': const {'7': true},
};

@$core.Deprecated('Use userDescriptor instead')
const User_PendingRequestEntry$json = const {
  '1': 'PendingRequestEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 3, '10': 'value'},
  ],
  '7': const {'7': true},
};

@$core.Deprecated('Use userDescriptor instead')
const User_ConnectedUserEntry$json = const {
  '1': 'ConnectedUserEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 3, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `User`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDescriptor = $convert.base64Decode('CgRVc2VyEhcKB1VzZXJfSWQYASABKAlSBlVzZXJJZBIfCgtTZWNyZXRfQ29kZRgCIAEoCVIKU2VjcmV0Q29kZRISCgROYW1lGAMgASgJUgROYW1lEiEKDFBob25lX051bWJlchgEIAEoCVILUGhvbmVOdW1iZXISEAoDQWdlGAUgASgJUgNBZ2USGAoHQWRkcmVzcxgGIAEoCVIHQWRkcmVzcxIbCglVc2VyX1R5cGUYByABKAlSCFVzZXJUeXBlEhQKBUVtYWlsGAggASgJUgVFbWFpbBIYCgdEaXNlYXNlGAkgASgJUgdEaXNlYXNlEkUKDlJlcXVlc3RlZF9Vc2VyGAogAygLMh4ucHJvdG8uVXNlci5SZXF1ZXN0ZWRVc2VyRW50cnlSDVJlcXVlc3RlZFVzZXISSAoPUGVuZGluZ19SZXF1ZXN0GAsgAygLMh8ucHJvdG8uVXNlci5QZW5kaW5nUmVxdWVzdEVudHJ5Ug5QZW5kaW5nUmVxdWVzdBJFCg5Db25uZWN0ZWRfVXNlchgMIAMoCzIeLnByb3RvLlVzZXIuQ29ubmVjdGVkVXNlckVudHJ5Ug1Db25uZWN0ZWRVc2VyGkAKElJlcXVlc3RlZFVzZXJFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoA1IFdmFsdWU6AjgBGkEKE1BlbmRpbmdSZXF1ZXN0RW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKANSBXZhbHVlOgI4ARpAChJDb25uZWN0ZWRVc2VyRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKANSBXZhbHVlOgI4AQ==');
@$core.Deprecated('Use getUserDetailsDescriptor instead')
const GetUserDetails$json = const {
  '1': 'GetUserDetails',
  '2': const [
    const {'1': 'User_Id', '3': 1, '4': 1, '5': 9, '10': 'UserId'},
    const {'1': 'Name', '3': 2, '4': 1, '5': 9, '10': 'Name'},
    const {'1': 'Phone_Number', '3': 3, '4': 1, '5': 9, '10': 'PhoneNumber'},
    const {'1': 'Age', '3': 4, '4': 1, '5': 9, '10': 'Age'},
    const {'1': 'Address', '3': 5, '4': 1, '5': 9, '10': 'Address'},
    const {'1': 'User_Type', '3': 6, '4': 1, '5': 9, '10': 'UserType'},
    const {'1': 'Email', '3': 7, '4': 1, '5': 9, '10': 'Email'},
    const {'1': 'Disease', '3': 8, '4': 1, '5': 9, '10': 'Disease'},
  ],
};

/// Descriptor for `GetUserDetails`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUserDetailsDescriptor = $convert.base64Decode('Cg5HZXRVc2VyRGV0YWlscxIXCgdVc2VyX0lkGAEgASgJUgZVc2VySWQSEgoETmFtZRgCIAEoCVIETmFtZRIhCgxQaG9uZV9OdW1iZXIYAyABKAlSC1Bob25lTnVtYmVyEhAKA0FnZRgEIAEoCVIDQWdlEhgKB0FkZHJlc3MYBSABKAlSB0FkZHJlc3MSGwoJVXNlcl9UeXBlGAYgASgJUghVc2VyVHlwZRIUCgVFbWFpbBgHIAEoCVIFRW1haWwSGAoHRGlzZWFzZRgIIAEoCVIHRGlzZWFzZQ==');
@$core.Deprecated('Use userSliceDescriptor instead')
const UserSlice$json = const {
  '1': 'UserSlice',
  '2': const [
    const {'1': 'userslice', '3': 1, '4': 3, '5': 11, '6': '.proto.GetUserDetails', '10': 'userslice'},
  ],
};

/// Descriptor for `UserSlice`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userSliceDescriptor = $convert.base64Decode('CglVc2VyU2xpY2USMwoJdXNlcnNsaWNlGAEgAygLMhUucHJvdG8uR2V0VXNlckRldGFpbHNSCXVzZXJzbGljZQ==');
