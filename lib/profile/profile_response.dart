
import 'package:slf_models/profile/user.dart';

class ProfileResponse {
  ProfileResponse({
    required this.result,
  });

  final User? result;

  factory ProfileResponse.fromJson(Map<String, dynamic> json){
    return ProfileResponse(
      result: json["result"] == null ? null : User.fromJson(json["result"]),
    );
  }

  Map<String, dynamic> toJson() => {
    "result": result?.toJson(),
  };

}

