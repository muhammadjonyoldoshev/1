import 'package:todos/models/todos_model.dart';
import 'package:todos/service/todos_service.dart';

void main() async {
  // String body = await TodosService.GET(TodosService.apiTodo, TodosService.headers);
  // List<Todos?> todos = TodosService.parseTodoList(body);
  // print(todos);

  Todos todos = Todos(userId: 12, id: 7, title: 'name', completed: false,);
  // String response = await TodosService.POST(TodosService.apiTodo, TodosService.headers, todos.toJson());
  // print("post: $response");

  // String response = await TodosService.GET(TodosService.apiTodo + todos.id.toString(), TodosService.headers);
  // print("get: $response");

  // String response = await TodosService.PUT(TodosService.apiTodo + todos.id.toString(), TodosService.headers, todos.toJson());
  // print("put: $response");

  // String response = await TodosService.PATCH(TodosService.apiTodo + todos.id.toString(), TodosService.headers,{'title': "nma gap"});
  // print("patch: $response");

  String response = await TodosService.DELETE(TodosService.apiTodo + todos.id.toString(), TodosService.headers);
  print("delete: $response");
}
