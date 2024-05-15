import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_todo_example/model/todo.dart';

part 'todo_list_provider.g.dart';

@riverpod
class TodoList extends _$TodoList {
  @override
  List<TodoModel> build() {
    return [];
  }

  void addTodo(String title) {
    final now = DateTime.now();
    final id = state.length;

    final todo = TodoModel.create(id: id, title: title, createdAt: now);
    state = [...state, todo];
  }

  TodoModel getTodo(int id) {
    return state.firstWhere((todo) => todo.id == id);
  }

  void progressTodo(int id) {
    final todo = getTodo(id);

    if (todo.status == TodoStatus.done) {
      return;
    }

    final updatedTodo = todo.copyWith(
      status: TodoStatus.values[(todo.status.index + 1) % TodoStatus.values.length],
      updatedAt: DateTime.now(),
    );

    state = [
      for (final t in state)
        if (t.id == id) updatedTodo else t
    ];
  }
}