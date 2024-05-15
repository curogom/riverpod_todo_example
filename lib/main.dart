import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_todo_example/presentation/home.dart';

void main() {
  runApp(const ProviderScope(child: RiverpodTodoApp()));
}

class RiverpodTodoApp extends StatelessWidget {
  const RiverpodTodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Riverpod Todo App',
      theme: ThemeData(
        colorSchemeSeed: Colors.indigo,
      ),
      home: const HomeScreen(),
    );
  }
}

