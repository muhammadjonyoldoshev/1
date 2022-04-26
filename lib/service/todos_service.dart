import 'dart:convert';

import 'package:http/http.dart';
import 'package:todos/models/todos_model.dart';

class TodosService{
  static const baseUrl = "jsonplaceholder.typicode.com";

  static Map<String, String> headers = {
    'Content-type': 'application/json; charset=UTF-8',
  };

  static const String apiTodos = "/todos";
  static const String apiTodo = "/todos/";

  static Future GET(String api, Map<String, String> headers) async {
    Uri uri = Uri.https(baseUrl, api);
    Response response = await get(uri, headers: headers);
    if(response.statusCode == 200 || response.statusCode == 201){
      return response.body;
    }else{
      throw Exception("error");
    }
  }

  static Future<String> POST(String api, Map<String, String> headers, Map<String, dynamic> body) async {
    Uri uri = Uri.https(baseUrl, api);
    Response response = await post(uri, headers: headers, body: jsonEncode(body));
    if(response.statusCode == 200 || response.statusCode == 201){
      return response.body;
    }else{
      throw Exception("error");
    }
  }

  static Future<String> PATCH(String api, Map<String, String> headers, Map<String, dynamic> body) async {
    Uri uri = Uri.https(baseUrl, api);
    Response response = await patch(uri, headers: headers, body: jsonEncode(body));
    if(response.statusCode == 200 || response.statusCode == 201){
      return response.body;
    }else{
      throw Exception("error");
    }
  }

  static Future<String> PUT(String api, Map<String, String> headers, Map<String, dynamic> body) async {
    Uri uri = Uri.https(baseUrl, api);
    Response response = await put(uri, headers: headers, body: jsonEncode(body));
    if(response.statusCode == 200 || response.statusCode == 201){
      return response.body;
    }else{
      throw Exception("error");
    }
  }

  static Future<String> DELETE(String api, Map<String, String> headers) async {
    Uri uri = Uri.https(baseUrl, api);
    Response response = await delete(uri, headers: headers);
    if(response.statusCode == 200 || response.statusCode == 201){
      return response.body;
    }else{
      throw Exception("error");
    }
  }

  static List<Todos?> parseTodoList(String body){
    List json = jsonDecode(body);
    List<Todos> todos = json.map((map) => Todos.fromJson(map)).toList();
    return todos;
  }

  static Todos parseTodos(String body){
    Map<String, dynamic> json = jsonDecode(body);
    Todos comment = Todos.fromJson(json);
    return comment;
  }
}