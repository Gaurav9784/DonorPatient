



import 'package:grpc/grpc.dart';
import 'package:grpcprovider/src/service.pb.dart';
import 'package:grpcprovider/src/service.pbgrpc.dart';

class DonorPatientService{
  static AddServiceClient client=AddServiceClient(
      ClientChannel(
        'localhost',
        port: 8080,
        options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
      )
  );

}