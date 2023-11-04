import 'package:dio/dio.dart';

class EventService {
  Future<List> getEvents() async {
    var response = await Dio().get(
      "https://fg-api.lumoshive.net/pub/api/v1/event/recent",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    Map obj = response.data;
    List items = obj["data"];
    return items;
  }
}
