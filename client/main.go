package main

import (
	Protos "GRPC/proto"
	"context"
	"google.golang.org/grpc"
	"log"
	"time"
)

const (
	address     = "localhost:8080"
	defaultName = "world"
)

func main(){
	conn, err := grpc.Dial(address, grpc.WithInsecure(), grpc.WithBlock())
	if err != nil {
		log.Fatalf("did not connect: %v", err)
	}
	defer conn.Close()
	c := Protos.NewAddServiceClient(conn)

	ctx, cancel := context.WithTimeout(context.Background(), time.Second)
	defer cancel()

	user,err:=c.Getalldonors(ctx,&Protos.User{
		Secret_Code: "613844821",
	})

	if err != nil {
		log.Fatalf("could not greet: %v", err)
	}
	//log.Printf("Greeting: %s", user)
	//
	//user,err:=c.Getuser(ctx,&Protos.User{
	//	Secret_Code: "846637688",
	//	User_Id: 3,
	//})

	//user1,err:=c.Sendrequest(ctx,&Protos.User{
	//	Secret_Code: "846637688",
	//	User_Id: 2,
	//})
	//
	//log.Printf("Greeting: %s", user1)

	if err != nil {
		log.Fatalf("could not greet: %v", err)
	}
	log.Printf("Greeting: %s", user)





}