import 'package:dio/dio.dart';

class AuthService {
  static String? token;

  static bool get isLogin {
    return token != null;
  }

  Future<bool> login({
    required String email,
    required String password,
  }) async {
    try {
      var response = await Dio().post(
        "https://fg-api.lumoshive.net/pub/api/v1/login",
        options: Options(
          headers: {
            "Content-Type": "application/json",
          },
        ),
        data: {
          "email": email,
          "password": password,
        },
      );
      print(response.data);
      token = response.data["data"]["token"];
      return true;
    } on Exception catch (err) {
      print(err);
      return false;
    }
  }
}
