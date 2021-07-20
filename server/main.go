package main

import (
	Protos "GRPC/proto"
	"context"
	"fmt"
	"google.golang.org/grpc"
	"net"
	"strconv"
	"sync"
	"time"
)

type server struct{
	Protos.UnimplementedAddServiceServer

}

var Users = make(map[string]Protos.User)
var UsersId = make(map[int]Protos.User)
var userid  =0
var mu sync.Mutex



func (s *server) Createuser(ctx context.Context, in *Protos.User) (*Protos.User, error) {
	var user= *in

	mu.Lock()
	j:=strconv.Itoa(userid)
	user.User_Id = j
	user.Secret_Code = strconv.Itoa(time.Now().Nanosecond())
	user.Requested_User = make(map[string]int64)
	user.Pending_Request = make(map[string]int64)
	user.Connected_User = make(map[string]int64)
	Users[user.Secret_Code] = user
	i,_:=strconv.Atoi(user.User_Id);
	UsersId[i] = user
	userid += 1
	mu.Unlock()

	return &user,nil
}

func (s *server) Loginuser(ctx context.Context, in *Protos.User) (*Protos.User, error) {
	var user= *in

	if value, ispresent := Users[user.Secret_Code]; ispresent {
		return &value,nil
	} else {
		return &Protos.User{Name: "Not Found"}, nil
	}
}

func (s *server) Getuser(ctx context.Context, in *Protos.User) (*Protos.GetUserDetails, error) {
	var user= *in

	if value, ispresent := Users[user.Secret_Code]; ispresent {
		i,_:=strconv.Atoi(user.User_Id);
		if valueId, ispresentId := UsersId[i]; ispresentId {
			if value.User_Type != valueId.User_Type {
				if value.Connected_User[valueId.User_Id] == 1 {
					connected_user := Protos.GetUserDetails{
						User_Id:      valueId.User_Id,
						Name:         valueId.Name,
						Phone_Number: valueId.Phone_Number,
						Age:          valueId.Age,
						Address:      valueId.Address,
						User_Type:    valueId.User_Type,
						Email:        valueId.Email,
					}
					return &connected_user,nil
				} else {
					unconnected_user := Protos.GetUserDetails{
						User_Id:      valueId.User_Id,
						Name:         valueId.Name,
						Phone_Number: "",
						Age:          "",
						Address:      "",
						User_Type:    valueId.User_Type,
						Email:        "",
					}
					return &unconnected_user,nil
				}
			} else {
				return &Protos.GetUserDetails{Name: "Type Same Error"}, nil
			}
		} else {
			return nil, nil
		}
	} else {
		return &Protos.GetUserDetails{Name: "User not found"}, nil
	}
}

func (s *server) Deleteuser(ctx context.Context, in *Protos.User) (*Protos.User, error) {
	var user=*in
	var tempuser=Protos.User{
		Name: "Deleted",
	}
	if _, ispresent := Users[user.Secret_Code]; ispresent {
		i,_:=strconv.Atoi(Users[user.Secret_Code].User_Id);
		delete(UsersId, i)
		delete(Users, user.Secret_Code)
		return &tempuser,nil
	} else {
		return &Protos.User{Name: "User not found"}, nil
	}
}

func (s *server) Updatecontactdetails(ctx context.Context, in *Protos.User) (*Protos.User, error) {
	var user=*in

	if value, ispresent := Users[user.Secret_Code]; ispresent {
		Users[user.Secret_Code] = Protos.User{
			User_Id:         value.User_Id,
			Secret_Code:     value.Secret_Code,
			Name:            user.Name,
			Phone_Number:    user.Phone_Number,
			Age:             user.Age,
			Address:         user.Address,
			User_Type:       user.User_Type,
			Email:           user.Email,
			Disease:         user.Disease,
			Requested_User:  value.Requested_User,
			Pending_Request: value.Pending_Request,
			Connected_User:  value.Connected_User,
		}
		i,_:=strconv.Atoi(value.User_Id);
		UsersId[i] = Protos.User{
			User_Id:         value.User_Id,
			Secret_Code:     value.Secret_Code,
			Name:            user.Name,
			Phone_Number:    user.Phone_Number,
			Age:             user.Age,
			Address:         user.Address,
			User_Type:       user.User_Type,
			Email:           user.Email,
			Disease:         user.Disease,
			Requested_User:  value.Requested_User,
			Pending_Request: value.Pending_Request,
			Connected_User:  value.Connected_User,
		}
		tempuser:=Users[user.Secret_Code]
		return &tempuser,nil

	} else {
		return &Protos.User{Name: "User Not Found"}, nil
	}
}

func (s *server) Getallpatients(ctx context.Context, in *Protos.User) (*Protos.UserSlice, error){
	user := *in

	if value, ispresent := Users[user.Secret_Code]; ispresent && value.User_Type == "donor" {
		var allpatients []*Protos.GetUserDetails
		for _, value1 := range Users {
			if value1.User_Type == "patient" {
				//
				if value.Connected_User[value1.User_Id] == 1 {
					ConnectedUser := Protos.GetUserDetails{
						User_Id:      value1.User_Id,
						Name:         value1.Name,
						Phone_Number: value1.Phone_Number,
						Age:          value1.Age,
						Address:      value1.Address,
						User_Type:    value1.User_Type,
						Email:        value1.Email,
					}
					allpatients = append(allpatients, &ConnectedUser)
				} else {
					unconnectedUser := Protos.GetUserDetails{
						User_Id:      value1.User_Id,
						Name:         value1.Name,
						Phone_Number: "",
						Age:          "",
						Address:      "",
						User_Type:    value1.User_Type,
						Email:        "",
					}
					allpatients = append(allpatients, &unconnectedUser)
				}
				//
			}
		}
		return &Protos.UserSlice{Userslice: allpatients}, nil
	} else {
		return nil, nil
	}
}

func (s *server) Getalldonors(ctx context.Context, in *Protos.User) (*Protos.UserSlice, error){
	var user =*in

	if value, ispresent := Users[user.Secret_Code]; ispresent && value.User_Type == "patient" {
		var alldonors []*Protos.GetUserDetails
		for _, value1 := range Users {
			if value1.User_Type == "donor" {
				//
				if value.Connected_User[value1.User_Id] == 1 {
					connectedUser := Protos.GetUserDetails{
						User_Id:      value1.User_Id,
						Name:         value1.Name,
						Phone_Number: value1.Phone_Number,
						Age:          value1.Age,
						Address:      value1.Address,
						User_Type:    value1.User_Type,
						Email:        value1.Email,
					}
					alldonors = append(alldonors, &connectedUser)
				} else {
					unconnectedUser := Protos.GetUserDetails{
						User_Id:      value1.User_Id,
						Name:         value1.Name,
						Phone_Number: "",
						Age:          "",
						Address:      "",
						User_Type:    value1.User_Type,
						Email:        "",
					}
					alldonors = append(alldonors, &unconnectedUser)
				}
				//
			}
		}
		return &Protos.UserSlice{Userslice: alldonors}, nil
	} else {
		return nil, nil
	}
}

func (s *server) Sendrequest(ctx context.Context, in *Protos.User) (*Protos.User, error){
	var user=*in

	if value, ispresent := Users[user.Secret_Code]; ispresent {
		i,_:=strconv.Atoi(user.User_Id);
		j,_:=strconv.Atoi(value.User_Id);
		if valueId, ispresentId := UsersId[i]; ispresentId {
			if value.User_Type != valueId.User_Type {
				Users[user.Secret_Code].Requested_User[user.User_Id] = 1
				Users[valueId.Secret_Code].Pending_Request[value.User_Id] = 1
				UsersId[j].Requested_User[user.User_Id] = 1
				UsersId[i].Pending_Request[value.User_Id] = 1
				tempuser:=Users[user.Secret_Code]
				return &tempuser,nil
			} else {
				return nil, nil
			}
		} else {
			return nil, nil
		}
	} else {
		return nil, nil
	}
}

func (s *server) Acceptrequest(ctx context.Context, in *Protos.User) (*Protos.User, error){
	var user=*in

	if value, ispresent := Users[user.Secret_Code]; ispresent {
		i,_:=strconv.Atoi(user.User_Id);
		j,_:=strconv.Atoi(value.User_Id);
		if valueId, ispresentId := UsersId[i]; ispresentId {
			if value.Pending_Request[user.User_Id] == 1 {
				Users[user.Secret_Code].Connected_User[user.User_Id] = 1
				Users[valueId.Secret_Code].Connected_User[value.User_Id] = 1
				UsersId[j].Connected_User[user.User_Id] = 1
				UsersId[i].Connected_User[value.User_Id] = 1

				delete(Users[user.Secret_Code].Pending_Request, user.User_Id)
				delete(Users[valueId.Secret_Code].Requested_User, value.User_Id)
				delete(UsersId[j].Pending_Request, user.User_Id)
				delete(UsersId[i].Requested_User, value.User_Id)

				tempuser:=Users[user.Secret_Code]
				return &tempuser,nil
			}
		}
	}
	return nil, nil
}

func (s *server) Cancelconnection(ctx context.Context, in *Protos.User) (*Protos.User, error){
	var user=*in

	if value, ispresent := Users[user.Secret_Code]; ispresent {
		i,_:=strconv.Atoi(user.User_Id);
		j,_:=strconv.Atoi(value.User_Id);
		if valueId, ispresentId := UsersId[i]; ispresentId {
			if value.Connected_User[user.User_Id] == 1 {

				delete(Users[user.Secret_Code].Connected_User, user.User_Id)
				delete(Users[valueId.Secret_Code].Connected_User, value.User_Id)
				delete(UsersId[j].Connected_User, user.User_Id)
				delete(UsersId[i].Connected_User, value.User_Id)

				tempuser:=Users[user.Secret_Code]
				return &tempuser,nil
			}
		}
	}
	return nil, nil
}

func (s *server) Cancelrequest(ctx context.Context, in *Protos.User) (*Protos.User, error){
	var user=*in

	if value, ispresent := Users[user.Secret_Code]; ispresent {
		i,_:=strconv.Atoi(user.User_Id);
		j,_:=strconv.Atoi(value.User_Id);
		if valueId, ispresentId := UsersId[i]; ispresentId {
			// fmt.Printf("%T\n", value.Pending_Request[user.User_Id])
			// fmt.Println(value.Pending_Request[user.User_Id])
			if value.Pending_Request[user.User_Id] == 1 {

				delete(Users[user.Secret_Code].Pending_Request, user.User_Id)
				delete(Users[valueId.Secret_Code].Requested_User, value.User_Id)
				delete(UsersId[j].Pending_Request, user.User_Id)
				delete(UsersId[i].Requested_User, value.User_Id)

				tempuser:=Users[user.Secret_Code]
				return &tempuser,nil
			}
		}
	}
	return nil, nil
}

func main() {

	fmt.Printf("LetsGo");

	listener, err := net.Listen("tcp", ":8080")
	if err != nil {
		fmt.Println(err)
	}

	srv := grpc.NewServer()
	Protos.RegisterAddServiceServer(srv, &server{})

	if e := srv.Serve(listener); e != nil {
		panic(e)
	}

}













