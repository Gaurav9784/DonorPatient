// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.26.0
// 	protoc        v3.11.2
// source: proto/service.proto

package service_proto

import (
	protoreflect "google.golang.org/protobuf/reflect/protoreflect"
	protoimpl "google.golang.org/protobuf/runtime/protoimpl"
	reflect "reflect"
	sync "sync"
)

const (
	// Verify that this generated code is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(20 - protoimpl.MinVersion)
	// Verify that runtime/protoimpl is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(protoimpl.MaxVersion - 20)
)

type User struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	User_Id         string           `protobuf:"bytes,1,opt,name=User_Id,json=UserId,proto3" json:"User_Id,omitempty"`
	Secret_Code     string           `protobuf:"bytes,2,opt,name=Secret_Code,json=SecretCode,proto3" json:"Secret_Code,omitempty"`
	Name            string           `protobuf:"bytes,3,opt,name=Name,proto3" json:"Name,omitempty"`
	Phone_Number    string           `protobuf:"bytes,4,opt,name=Phone_Number,json=PhoneNumber,proto3" json:"Phone_Number,omitempty"`
	Age             string           `protobuf:"bytes,5,opt,name=Age,proto3" json:"Age,omitempty"`
	Address         string           `protobuf:"bytes,6,opt,name=Address,proto3" json:"Address,omitempty"`
	User_Type       string           `protobuf:"bytes,7,opt,name=User_Type,json=UserType,proto3" json:"User_Type,omitempty"`
	Email           string           `protobuf:"bytes,8,opt,name=Email,proto3" json:"Email,omitempty"`
	Disease         string           `protobuf:"bytes,9,opt,name=Disease,proto3" json:"Disease,omitempty"`
	Requested_User  map[string]int64 `protobuf:"bytes,10,rep,name=Requested_User,json=RequestedUser,proto3" json:"Requested_User,omitempty" protobuf_key:"bytes,1,opt,name=key,proto3" protobuf_val:"varint,2,opt,name=value,proto3"`
	Pending_Request map[string]int64 `protobuf:"bytes,11,rep,name=Pending_Request,json=PendingRequest,proto3" json:"Pending_Request,omitempty" protobuf_key:"bytes,1,opt,name=key,proto3" protobuf_val:"varint,2,opt,name=value,proto3"`
	Connected_User  map[string]int64 `protobuf:"bytes,12,rep,name=Connected_User,json=ConnectedUser,proto3" json:"Connected_User,omitempty" protobuf_key:"bytes,1,opt,name=key,proto3" protobuf_val:"varint,2,opt,name=value,proto3"`
}

func (x *User) Reset() {
	*x = User{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_service_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *User) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*User) ProtoMessage() {}

func (x *User) ProtoReflect() protoreflect.Message {
	mi := &file_proto_service_proto_msgTypes[0]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use User.ProtoReflect.Descriptor instead.
func (*User) Descriptor() ([]byte, []int) {
	return file_proto_service_proto_rawDescGZIP(), []int{0}
}

func (x *User) GetUser_Id() string {
	if x != nil {
		return x.User_Id
	}
	return ""
}

func (x *User) GetSecret_Code() string {
	if x != nil {
		return x.Secret_Code
	}
	return ""
}

func (x *User) GetName() string {
	if x != nil {
		return x.Name
	}
	return ""
}

func (x *User) GetPhone_Number() string {
	if x != nil {
		return x.Phone_Number
	}
	return ""
}

func (x *User) GetAge() string {
	if x != nil {
		return x.Age
	}
	return ""
}

func (x *User) GetAddress() string {
	if x != nil {
		return x.Address
	}
	return ""
}

func (x *User) GetUser_Type() string {
	if x != nil {
		return x.User_Type
	}
	return ""
}

func (x *User) GetEmail() string {
	if x != nil {
		return x.Email
	}
	return ""
}

func (x *User) GetDisease() string {
	if x != nil {
		return x.Disease
	}
	return ""
}

func (x *User) GetRequested_User() map[string]int64 {
	if x != nil {
		return x.Requested_User
	}
	return nil
}

func (x *User) GetPending_Request() map[string]int64 {
	if x != nil {
		return x.Pending_Request
	}
	return nil
}

func (x *User) GetConnected_User() map[string]int64 {
	if x != nil {
		return x.Connected_User
	}
	return nil
}

type GetUserDetails struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	User_Id      string `protobuf:"bytes,1,opt,name=User_Id,json=UserId,proto3" json:"User_Id,omitempty"`
	Name         string `protobuf:"bytes,2,opt,name=Name,proto3" json:"Name,omitempty"`
	Phone_Number string `protobuf:"bytes,3,opt,name=Phone_Number,json=PhoneNumber,proto3" json:"Phone_Number,omitempty"`
	Age          string `protobuf:"bytes,4,opt,name=Age,proto3" json:"Age,omitempty"`
	Address      string `protobuf:"bytes,5,opt,name=Address,proto3" json:"Address,omitempty"`
	User_Type    string `protobuf:"bytes,6,opt,name=User_Type,json=UserType,proto3" json:"User_Type,omitempty"`
	Email        string `protobuf:"bytes,7,opt,name=Email,proto3" json:"Email,omitempty"`
	Disease      string `protobuf:"bytes,8,opt,name=Disease,proto3" json:"Disease,omitempty"`
}

func (x *GetUserDetails) Reset() {
	*x = GetUserDetails{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_service_proto_msgTypes[1]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *GetUserDetails) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*GetUserDetails) ProtoMessage() {}

func (x *GetUserDetails) ProtoReflect() protoreflect.Message {
	mi := &file_proto_service_proto_msgTypes[1]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use GetUserDetails.ProtoReflect.Descriptor instead.
func (*GetUserDetails) Descriptor() ([]byte, []int) {
	return file_proto_service_proto_rawDescGZIP(), []int{1}
}

func (x *GetUserDetails) GetUser_Id() string {
	if x != nil {
		return x.User_Id
	}
	return ""
}

func (x *GetUserDetails) GetName() string {
	if x != nil {
		return x.Name
	}
	return ""
}

func (x *GetUserDetails) GetPhone_Number() string {
	if x != nil {
		return x.Phone_Number
	}
	return ""
}

func (x *GetUserDetails) GetAge() string {
	if x != nil {
		return x.Age
	}
	return ""
}

func (x *GetUserDetails) GetAddress() string {
	if x != nil {
		return x.Address
	}
	return ""
}

func (x *GetUserDetails) GetUser_Type() string {
	if x != nil {
		return x.User_Type
	}
	return ""
}

func (x *GetUserDetails) GetEmail() string {
	if x != nil {
		return x.Email
	}
	return ""
}

func (x *GetUserDetails) GetDisease() string {
	if x != nil {
		return x.Disease
	}
	return ""
}

type UserSlice struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Userslice []*GetUserDetails `protobuf:"bytes,1,rep,name=userslice,proto3" json:"userslice,omitempty"`
}

func (x *UserSlice) Reset() {
	*x = UserSlice{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_service_proto_msgTypes[2]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *UserSlice) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*UserSlice) ProtoMessage() {}

func (x *UserSlice) ProtoReflect() protoreflect.Message {
	mi := &file_proto_service_proto_msgTypes[2]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use UserSlice.ProtoReflect.Descriptor instead.
func (*UserSlice) Descriptor() ([]byte, []int) {
	return file_proto_service_proto_rawDescGZIP(), []int{2}
}

func (x *UserSlice) GetUserslice() []*GetUserDetails {
	if x != nil {
		return x.Userslice
	}
	return nil
}

var File_proto_service_proto protoreflect.FileDescriptor

var file_proto_service_proto_rawDesc = []byte{
	0x0a, 0x13, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2f, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x2e,
	0x70, 0x72, 0x6f, 0x74, 0x6f, 0x12, 0x05, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x22, 0x8f, 0x05, 0x0a,
	0x04, 0x55, 0x73, 0x65, 0x72, 0x12, 0x17, 0x0a, 0x07, 0x55, 0x73, 0x65, 0x72, 0x5f, 0x49, 0x64,
	0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x06, 0x55, 0x73, 0x65, 0x72, 0x49, 0x64, 0x12, 0x1f,
	0x0a, 0x0b, 0x53, 0x65, 0x63, 0x72, 0x65, 0x74, 0x5f, 0x43, 0x6f, 0x64, 0x65, 0x18, 0x02, 0x20,
	0x01, 0x28, 0x09, 0x52, 0x0a, 0x53, 0x65, 0x63, 0x72, 0x65, 0x74, 0x43, 0x6f, 0x64, 0x65, 0x12,
	0x12, 0x0a, 0x04, 0x4e, 0x61, 0x6d, 0x65, 0x18, 0x03, 0x20, 0x01, 0x28, 0x09, 0x52, 0x04, 0x4e,
	0x61, 0x6d, 0x65, 0x12, 0x21, 0x0a, 0x0c, 0x50, 0x68, 0x6f, 0x6e, 0x65, 0x5f, 0x4e, 0x75, 0x6d,
	0x62, 0x65, 0x72, 0x18, 0x04, 0x20, 0x01, 0x28, 0x09, 0x52, 0x0b, 0x50, 0x68, 0x6f, 0x6e, 0x65,
	0x4e, 0x75, 0x6d, 0x62, 0x65, 0x72, 0x12, 0x10, 0x0a, 0x03, 0x41, 0x67, 0x65, 0x18, 0x05, 0x20,
	0x01, 0x28, 0x09, 0x52, 0x03, 0x41, 0x67, 0x65, 0x12, 0x18, 0x0a, 0x07, 0x41, 0x64, 0x64, 0x72,
	0x65, 0x73, 0x73, 0x18, 0x06, 0x20, 0x01, 0x28, 0x09, 0x52, 0x07, 0x41, 0x64, 0x64, 0x72, 0x65,
	0x73, 0x73, 0x12, 0x1b, 0x0a, 0x09, 0x55, 0x73, 0x65, 0x72, 0x5f, 0x54, 0x79, 0x70, 0x65, 0x18,
	0x07, 0x20, 0x01, 0x28, 0x09, 0x52, 0x08, 0x55, 0x73, 0x65, 0x72, 0x54, 0x79, 0x70, 0x65, 0x12,
	0x14, 0x0a, 0x05, 0x45, 0x6d, 0x61, 0x69, 0x6c, 0x18, 0x08, 0x20, 0x01, 0x28, 0x09, 0x52, 0x05,
	0x45, 0x6d, 0x61, 0x69, 0x6c, 0x12, 0x18, 0x0a, 0x07, 0x44, 0x69, 0x73, 0x65, 0x61, 0x73, 0x65,
	0x18, 0x09, 0x20, 0x01, 0x28, 0x09, 0x52, 0x07, 0x44, 0x69, 0x73, 0x65, 0x61, 0x73, 0x65, 0x12,
	0x45, 0x0a, 0x0e, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x65, 0x64, 0x5f, 0x55, 0x73, 0x65,
	0x72, 0x18, 0x0a, 0x20, 0x03, 0x28, 0x0b, 0x32, 0x1e, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2e,
	0x55, 0x73, 0x65, 0x72, 0x2e, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x65, 0x64, 0x55, 0x73,
	0x65, 0x72, 0x45, 0x6e, 0x74, 0x72, 0x79, 0x52, 0x0d, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74,
	0x65, 0x64, 0x55, 0x73, 0x65, 0x72, 0x12, 0x48, 0x0a, 0x0f, 0x50, 0x65, 0x6e, 0x64, 0x69, 0x6e,
	0x67, 0x5f, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x18, 0x0b, 0x20, 0x03, 0x28, 0x0b, 0x32,
	0x1f, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2e, 0x55, 0x73, 0x65, 0x72, 0x2e, 0x50, 0x65, 0x6e,
	0x64, 0x69, 0x6e, 0x67, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x45, 0x6e, 0x74, 0x72, 0x79,
	0x52, 0x0e, 0x50, 0x65, 0x6e, 0x64, 0x69, 0x6e, 0x67, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74,
	0x12, 0x45, 0x0a, 0x0e, 0x43, 0x6f, 0x6e, 0x6e, 0x65, 0x63, 0x74, 0x65, 0x64, 0x5f, 0x55, 0x73,
	0x65, 0x72, 0x18, 0x0c, 0x20, 0x03, 0x28, 0x0b, 0x32, 0x1e, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f,
	0x2e, 0x55, 0x73, 0x65, 0x72, 0x2e, 0x43, 0x6f, 0x6e, 0x6e, 0x65, 0x63, 0x74, 0x65, 0x64, 0x55,
	0x73, 0x65, 0x72, 0x45, 0x6e, 0x74, 0x72, 0x79, 0x52, 0x0d, 0x43, 0x6f, 0x6e, 0x6e, 0x65, 0x63,
	0x74, 0x65, 0x64, 0x55, 0x73, 0x65, 0x72, 0x1a, 0x40, 0x0a, 0x12, 0x52, 0x65, 0x71, 0x75, 0x65,
	0x73, 0x74, 0x65, 0x64, 0x55, 0x73, 0x65, 0x72, 0x45, 0x6e, 0x74, 0x72, 0x79, 0x12, 0x10, 0x0a,
	0x03, 0x6b, 0x65, 0x79, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x03, 0x6b, 0x65, 0x79, 0x12,
	0x14, 0x0a, 0x05, 0x76, 0x61, 0x6c, 0x75, 0x65, 0x18, 0x02, 0x20, 0x01, 0x28, 0x03, 0x52, 0x05,
	0x76, 0x61, 0x6c, 0x75, 0x65, 0x3a, 0x02, 0x38, 0x01, 0x1a, 0x41, 0x0a, 0x13, 0x50, 0x65, 0x6e,
	0x64, 0x69, 0x6e, 0x67, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x45, 0x6e, 0x74, 0x72, 0x79,
	0x12, 0x10, 0x0a, 0x03, 0x6b, 0x65, 0x79, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x03, 0x6b,
	0x65, 0x79, 0x12, 0x14, 0x0a, 0x05, 0x76, 0x61, 0x6c, 0x75, 0x65, 0x18, 0x02, 0x20, 0x01, 0x28,
	0x03, 0x52, 0x05, 0x76, 0x61, 0x6c, 0x75, 0x65, 0x3a, 0x02, 0x38, 0x01, 0x1a, 0x40, 0x0a, 0x12,
	0x43, 0x6f, 0x6e, 0x6e, 0x65, 0x63, 0x74, 0x65, 0x64, 0x55, 0x73, 0x65, 0x72, 0x45, 0x6e, 0x74,
	0x72, 0x79, 0x12, 0x10, 0x0a, 0x03, 0x6b, 0x65, 0x79, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52,
	0x03, 0x6b, 0x65, 0x79, 0x12, 0x14, 0x0a, 0x05, 0x76, 0x61, 0x6c, 0x75, 0x65, 0x18, 0x02, 0x20,
	0x01, 0x28, 0x03, 0x52, 0x05, 0x76, 0x61, 0x6c, 0x75, 0x65, 0x3a, 0x02, 0x38, 0x01, 0x22, 0xd9,
	0x01, 0x0a, 0x0e, 0x47, 0x65, 0x74, 0x55, 0x73, 0x65, 0x72, 0x44, 0x65, 0x74, 0x61, 0x69, 0x6c,
	0x73, 0x12, 0x17, 0x0a, 0x07, 0x55, 0x73, 0x65, 0x72, 0x5f, 0x49, 0x64, 0x18, 0x01, 0x20, 0x01,
	0x28, 0x09, 0x52, 0x06, 0x55, 0x73, 0x65, 0x72, 0x49, 0x64, 0x12, 0x12, 0x0a, 0x04, 0x4e, 0x61,
	0x6d, 0x65, 0x18, 0x02, 0x20, 0x01, 0x28, 0x09, 0x52, 0x04, 0x4e, 0x61, 0x6d, 0x65, 0x12, 0x21,
	0x0a, 0x0c, 0x50, 0x68, 0x6f, 0x6e, 0x65, 0x5f, 0x4e, 0x75, 0x6d, 0x62, 0x65, 0x72, 0x18, 0x03,
	0x20, 0x01, 0x28, 0x09, 0x52, 0x0b, 0x50, 0x68, 0x6f, 0x6e, 0x65, 0x4e, 0x75, 0x6d, 0x62, 0x65,
	0x72, 0x12, 0x10, 0x0a, 0x03, 0x41, 0x67, 0x65, 0x18, 0x04, 0x20, 0x01, 0x28, 0x09, 0x52, 0x03,
	0x41, 0x67, 0x65, 0x12, 0x18, 0x0a, 0x07, 0x41, 0x64, 0x64, 0x72, 0x65, 0x73, 0x73, 0x18, 0x05,
	0x20, 0x01, 0x28, 0x09, 0x52, 0x07, 0x41, 0x64, 0x64, 0x72, 0x65, 0x73, 0x73, 0x12, 0x1b, 0x0a,
	0x09, 0x55, 0x73, 0x65, 0x72, 0x5f, 0x54, 0x79, 0x70, 0x65, 0x18, 0x06, 0x20, 0x01, 0x28, 0x09,
	0x52, 0x08, 0x55, 0x73, 0x65, 0x72, 0x54, 0x79, 0x70, 0x65, 0x12, 0x14, 0x0a, 0x05, 0x45, 0x6d,
	0x61, 0x69, 0x6c, 0x18, 0x07, 0x20, 0x01, 0x28, 0x09, 0x52, 0x05, 0x45, 0x6d, 0x61, 0x69, 0x6c,
	0x12, 0x18, 0x0a, 0x07, 0x44, 0x69, 0x73, 0x65, 0x61, 0x73, 0x65, 0x18, 0x08, 0x20, 0x01, 0x28,
	0x09, 0x52, 0x07, 0x44, 0x69, 0x73, 0x65, 0x61, 0x73, 0x65, 0x22, 0x40, 0x0a, 0x09, 0x55, 0x73,
	0x65, 0x72, 0x53, 0x6c, 0x69, 0x63, 0x65, 0x12, 0x33, 0x0a, 0x09, 0x75, 0x73, 0x65, 0x72, 0x73,
	0x6c, 0x69, 0x63, 0x65, 0x18, 0x01, 0x20, 0x03, 0x28, 0x0b, 0x32, 0x15, 0x2e, 0x70, 0x72, 0x6f,
	0x74, 0x6f, 0x2e, 0x47, 0x65, 0x74, 0x55, 0x73, 0x65, 0x72, 0x44, 0x65, 0x74, 0x61, 0x69, 0x6c,
	0x73, 0x52, 0x09, 0x75, 0x73, 0x65, 0x72, 0x73, 0x6c, 0x69, 0x63, 0x65, 0x32, 0xf1, 0x03, 0x0a,
	0x0a, 0x41, 0x64, 0x64, 0x53, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x12, 0x26, 0x0a, 0x0a, 0x63,
	0x72, 0x65, 0x61, 0x74, 0x65, 0x75, 0x73, 0x65, 0x72, 0x12, 0x0b, 0x2e, 0x70, 0x72, 0x6f, 0x74,
	0x6f, 0x2e, 0x55, 0x73, 0x65, 0x72, 0x1a, 0x0b, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2e, 0x55,
	0x73, 0x65, 0x72, 0x12, 0x25, 0x0a, 0x09, 0x6c, 0x6f, 0x67, 0x69, 0x6e, 0x75, 0x73, 0x65, 0x72,
	0x12, 0x0b, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2e, 0x55, 0x73, 0x65, 0x72, 0x1a, 0x0b, 0x2e,
	0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2e, 0x55, 0x73, 0x65, 0x72, 0x12, 0x26, 0x0a, 0x0a, 0x64, 0x65,
	0x6c, 0x65, 0x74, 0x65, 0x75, 0x73, 0x65, 0x72, 0x12, 0x0b, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f,
	0x2e, 0x55, 0x73, 0x65, 0x72, 0x1a, 0x0b, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2e, 0x55, 0x73,
	0x65, 0x72, 0x12, 0x2d, 0x0a, 0x07, 0x67, 0x65, 0x74, 0x75, 0x73, 0x65, 0x72, 0x12, 0x0b, 0x2e,
	0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2e, 0x55, 0x73, 0x65, 0x72, 0x1a, 0x15, 0x2e, 0x70, 0x72, 0x6f,
	0x74, 0x6f, 0x2e, 0x47, 0x65, 0x74, 0x55, 0x73, 0x65, 0x72, 0x44, 0x65, 0x74, 0x61, 0x69, 0x6c,
	0x73, 0x12, 0x30, 0x0a, 0x14, 0x75, 0x70, 0x64, 0x61, 0x74, 0x65, 0x63, 0x6f, 0x6e, 0x74, 0x61,
	0x63, 0x74, 0x64, 0x65, 0x74, 0x61, 0x69, 0x6c, 0x73, 0x12, 0x0b, 0x2e, 0x70, 0x72, 0x6f, 0x74,
	0x6f, 0x2e, 0x55, 0x73, 0x65, 0x72, 0x1a, 0x0b, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2e, 0x55,
	0x73, 0x65, 0x72, 0x12, 0x2f, 0x0a, 0x0e, 0x67, 0x65, 0x74, 0x61, 0x6c, 0x6c, 0x70, 0x61, 0x74,
	0x69, 0x65, 0x6e, 0x74, 0x73, 0x12, 0x0b, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2e, 0x55, 0x73,
	0x65, 0x72, 0x1a, 0x10, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2e, 0x55, 0x73, 0x65, 0x72, 0x53,
	0x6c, 0x69, 0x63, 0x65, 0x12, 0x2d, 0x0a, 0x0c, 0x67, 0x65, 0x74, 0x61, 0x6c, 0x6c, 0x64, 0x6f,
	0x6e, 0x6f, 0x72, 0x73, 0x12, 0x0b, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2e, 0x55, 0x73, 0x65,
	0x72, 0x1a, 0x10, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2e, 0x55, 0x73, 0x65, 0x72, 0x53, 0x6c,
	0x69, 0x63, 0x65, 0x12, 0x27, 0x0a, 0x0b, 0x73, 0x65, 0x6e, 0x64, 0x72, 0x65, 0x71, 0x75, 0x65,
	0x73, 0x74, 0x12, 0x0b, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2e, 0x55, 0x73, 0x65, 0x72, 0x1a,
	0x0b, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2e, 0x55, 0x73, 0x65, 0x72, 0x12, 0x29, 0x0a, 0x0d,
	0x61, 0x63, 0x63, 0x65, 0x70, 0x74, 0x72, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x12, 0x0b, 0x2e,
	0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2e, 0x55, 0x73, 0x65, 0x72, 0x1a, 0x0b, 0x2e, 0x70, 0x72, 0x6f,
	0x74, 0x6f, 0x2e, 0x55, 0x73, 0x65, 0x72, 0x12, 0x2c, 0x0a, 0x10, 0x63, 0x61, 0x6e, 0x63, 0x65,
	0x6c, 0x63, 0x6f, 0x6e, 0x6e, 0x65, 0x63, 0x74, 0x69, 0x6f, 0x6e, 0x12, 0x0b, 0x2e, 0x70, 0x72,
	0x6f, 0x74, 0x6f, 0x2e, 0x55, 0x73, 0x65, 0x72, 0x1a, 0x0b, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f,
	0x2e, 0x55, 0x73, 0x65, 0x72, 0x12, 0x29, 0x0a, 0x0d, 0x63, 0x61, 0x6e, 0x63, 0x65, 0x6c, 0x72,
	0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x12, 0x0b, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2e, 0x55,
	0x73, 0x65, 0x72, 0x1a, 0x0b, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2e, 0x55, 0x73, 0x65, 0x72,
	0x42, 0x2e, 0x5a, 0x2c, 0x2f, 0x44, 0x65, 0x73, 0x6b, 0x74, 0x6f, 0x70, 0x2f, 0x62, 0x75, 0x67,
	0x73, 0x6d, 0x69, 0x72, 0x72, 0x6f, 0x72, 0x2f, 0x47, 0x52, 0x50, 0x43, 0x2f, 0x70, 0x72, 0x6f,
	0x74, 0x6f, 0x2f, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f,
	0x62, 0x06, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x33,
}

var (
	file_proto_service_proto_rawDescOnce sync.Once
	file_proto_service_proto_rawDescData = file_proto_service_proto_rawDesc
)

func file_proto_service_proto_rawDescGZIP() []byte {
	file_proto_service_proto_rawDescOnce.Do(func() {
		file_proto_service_proto_rawDescData = protoimpl.X.CompressGZIP(file_proto_service_proto_rawDescData)
	})
	return file_proto_service_proto_rawDescData
}

var file_proto_service_proto_msgTypes = make([]protoimpl.MessageInfo, 6)
var file_proto_service_proto_goTypes = []interface{}{
	(*User)(nil),           // 0: proto.User
	(*GetUserDetails)(nil), // 1: proto.GetUserDetails
	(*UserSlice)(nil),      // 2: proto.UserSlice
	nil,                    // 3: proto.User.RequestedUserEntry
	nil,                    // 4: proto.User.PendingRequestEntry
	nil,                    // 5: proto.User.ConnectedUserEntry
}
var file_proto_service_proto_depIdxs = []int32{
	3,  // 0: proto.User.Requested_User:type_name -> proto.User.RequestedUserEntry
	4,  // 1: proto.User.Pending_Request:type_name -> proto.User.PendingRequestEntry
	5,  // 2: proto.User.Connected_User:type_name -> proto.User.ConnectedUserEntry
	1,  // 3: proto.UserSlice.userslice:type_name -> proto.GetUserDetails
	0,  // 4: proto.AddService.createuser:input_type -> proto.User
	0,  // 5: proto.AddService.loginuser:input_type -> proto.User
	0,  // 6: proto.AddService.deleteuser:input_type -> proto.User
	0,  // 7: proto.AddService.getuser:input_type -> proto.User
	0,  // 8: proto.AddService.updatecontactdetails:input_type -> proto.User
	0,  // 9: proto.AddService.getallpatients:input_type -> proto.User
	0,  // 10: proto.AddService.getalldonors:input_type -> proto.User
	0,  // 11: proto.AddService.sendrequest:input_type -> proto.User
	0,  // 12: proto.AddService.acceptrequest:input_type -> proto.User
	0,  // 13: proto.AddService.cancelconnection:input_type -> proto.User
	0,  // 14: proto.AddService.cancelrequest:input_type -> proto.User
	0,  // 15: proto.AddService.createuser:output_type -> proto.User
	0,  // 16: proto.AddService.loginuser:output_type -> proto.User
	0,  // 17: proto.AddService.deleteuser:output_type -> proto.User
	1,  // 18: proto.AddService.getuser:output_type -> proto.GetUserDetails
	0,  // 19: proto.AddService.updatecontactdetails:output_type -> proto.User
	2,  // 20: proto.AddService.getallpatients:output_type -> proto.UserSlice
	2,  // 21: proto.AddService.getalldonors:output_type -> proto.UserSlice
	0,  // 22: proto.AddService.sendrequest:output_type -> proto.User
	0,  // 23: proto.AddService.acceptrequest:output_type -> proto.User
	0,  // 24: proto.AddService.cancelconnection:output_type -> proto.User
	0,  // 25: proto.AddService.cancelrequest:output_type -> proto.User
	15, // [15:26] is the sub-list for method output_type
	4,  // [4:15] is the sub-list for method input_type
	4,  // [4:4] is the sub-list for extension type_name
	4,  // [4:4] is the sub-list for extension extendee
	0,  // [0:4] is the sub-list for field type_name
}

func init() { file_proto_service_proto_init() }
func file_proto_service_proto_init() {
	if File_proto_service_proto != nil {
		return
	}
	if !protoimpl.UnsafeEnabled {
		file_proto_service_proto_msgTypes[0].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*User); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_proto_service_proto_msgTypes[1].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*GetUserDetails); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_proto_service_proto_msgTypes[2].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*UserSlice); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
	}
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: file_proto_service_proto_rawDesc,
			NumEnums:      0,
			NumMessages:   6,
			NumExtensions: 0,
			NumServices:   1,
		},
		GoTypes:           file_proto_service_proto_goTypes,
		DependencyIndexes: file_proto_service_proto_depIdxs,
		MessageInfos:      file_proto_service_proto_msgTypes,
	}.Build()
	File_proto_service_proto = out.File
	file_proto_service_proto_rawDesc = nil
	file_proto_service_proto_goTypes = nil
	file_proto_service_proto_depIdxs = nil
}
