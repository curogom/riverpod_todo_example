import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_todo_example/provider/todo_provider.dart';

class TodoDetailScreen extends ConsumerWidget {
  final int id;

  const TodoDetailScreen({required this.id, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todo = ref.watch(todoProvider(id));

    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(todo.title),
            Text(todo.status.toString()),
            Text(todo.createdAt.toString()),
          ],
        ),
      ),
    );
  }
}
