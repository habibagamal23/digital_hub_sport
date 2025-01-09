
abstract class ApiConsumer {
  Future<dynamic> get(String url, {Map<String, dynamic>? queryParameters});
  Future<dynamic> post(String url, Map<String, dynamic>? body);
}
