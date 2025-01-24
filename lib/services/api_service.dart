import "package:http/http.dart" as http;
import "dart:convert";

class ApiService {
  // var path = Uri.parse(baseUrl).replace(path: 'api/v1/Auth');

  // // GET request
  // Future<http.Response> get(String endpoint,
  //     {Map<String, String>? headers, Map<String, String>? params}) async {
  //   var uri =
  //       Uri.parse(baseUrl).replace(path: endpoint, queryParameters: params);
  //   var response = await http.get(uri, headers: headers);
  //   return response;
  // }

  // // POST request
  // Future<http.Response> post(String endpoint,
  //     {Map<String, String>? headers, Map<String, dynamic>? body}) async {
  //   var uri = Uri.parse(baseUrl).replace(path: endpoint);
  //   var response = await http.post(
  //     uri,
  //     headers: headers ?? {'Content-Type': 'application/json'},
  //     body: jsonEncode(body),
  //   );
  //   return response;
  // }

  // // PUT request
  // Future<http.Response> put(String endpoint,
  //     {Map<String, String>? headers, Map<String, dynamic>? body}) async {
  //   var uri = Uri.parse(baseUrl).replace(path: endpoint);
  //   var response = await http.put(
  //     uri,
  //     headers: headers ?? {'Content-Type': 'application/json'},
  //     body: jsonEncode(body),
  //   );
  //   return response;
  // }

  // // DELETE request
  // Future<http.Response> delete(String endpoint,
  //     {Map<String, String>? headers}) async {
  //   var uri = Uri.parse(baseUrl).replace(path: endpoint);
  //   var response = await http.delete(uri, headers: headers);
  //   return response;
  // }

  // Future login(String userName, String password) async {
  //   var response = await http.post(
  //     path,
  //     headers: {
  //       'Content-Type': 'application/json',
  //     },
  //     body: jsonEncode({
  //       "userName": userName,
  //       "password": password,
  //     }),
  //   );
  //   return response;
  // }
}
