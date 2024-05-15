import 'package:flutter/material.dart';
import 'package:riverpod_todo_example/presentation/todo/add_todo_screen.dart';
import 'package:riverpod_todo_example/presentation/todo/todo_list_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod Todo App'),
      ),
      body: const TodoListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const AddTodoScreen(),
            ),
          );
        },
        child: const Icon(Icons.add),
      )
    );
  }
}
