import 'package:todolist/Utils.dart';

class TodoField {
  static const createdTime = "createdTime";
}

class Todo {
  late DateTime createdTime;
  late String title;
  late String id;
  late String description;
  late bool isDone;

  Todo({
    required this.createdTime,
    required this.title,
    this.description = "",
    this.id = '',
    this.isDone = false,
  });

  static Todo fromJson(Map<String, dynamic> json) => Todo(
        createdTime: Utils.toDateTime(json['createdTime']),
        title: json['title'],
        description: json['description'],
        id: json['id'],
        isDone: json['isDone'],
      );

  Map<String, dynamic> toJson() => {
        'createdTime': Utils.fromDateTimeToJson(createdTime),
        'title': title,
        'description': description,
        'id': id,
        'isDone': isDone,
      };
}
