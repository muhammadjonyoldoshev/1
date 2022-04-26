class Todos{
  int? userId;
  int? id;
  String? title;
  bool? completed;

  Todos({required this.userId, required this.id, required this.title, required this.completed});

  Todos.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    completed = json['completed'];
  }

  Map<String, dynamic> toJson () => {
    'userId': userId,
    'id': id,
    'title': title,
    'completed': completed,
  };

  @override
  String toString() {
    // TODO: implement toString
    return "UserId: $userId\nId: $id\nTile: $title\nCompleted: $completed";
  }
}