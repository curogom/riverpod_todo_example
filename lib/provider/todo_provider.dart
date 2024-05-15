import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_todo_example/model/todo.dart';
import 'package:riverpod_todo_example/provider/todo_list_provider.dart';

part 'todo_provider.g.dart';

@riverpod
class Todo extends _$Todo {
  @override
  TodoModel build(int id) {
    return ref.read(todoListProvider.notifier).getTodo(id);
  }
}
