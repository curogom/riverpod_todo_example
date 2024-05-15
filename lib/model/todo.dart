class TodoModel {
  final int id;
  final String title;
  final TodoStatus status;
  final DateTime createdAt;
  final DateTime updatedAt;

  const TodoModel({
    required this.id,
    required this.title,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  factory TodoModel.create({
    required int id,
    required String title,
    required DateTime createdAt,
  }) {
    return TodoModel(
      id: id,
      title: title,
      status: TodoStatus.todo,
      createdAt: createdAt,
      updatedAt: createdAt,
    );
  }

  TodoModel copyWith({
    int? id,
    String? title,
    TodoStatus? status,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return TodoModel(
      id: id ?? this.id,
      title: title ?? this.title,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

enum TodoStatus {
  todo,
  doing,
  done,
}
