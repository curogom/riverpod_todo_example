// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$todoHash() => r'0f31a8d30e2d2a35adc9106bdc9163b301801f86';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$Todo extends BuildlessAutoDisposeNotifier<TodoModel> {
  late final int id;

  TodoModel build(
    int id,
  );
}

/// See also [Todo].
@ProviderFor(Todo)
const todoProvider = TodoFamily();

/// See also [Todo].
class TodoFamily extends Family<TodoModel> {
  /// See also [Todo].
  const TodoFamily();

  /// See also [Todo].
  TodoProvider call(
    int id,
  ) {
    return TodoProvider(
      id,
    );
  }

  @override
  TodoProvider getProviderOverride(
    covariant TodoProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'todoProvider';
}

/// See also [Todo].
class TodoProvider extends AutoDisposeNotifierProviderImpl<Todo, TodoModel> {
  /// See also [Todo].
  TodoProvider(
    int id,
  ) : this._internal(
          () => Todo()..id = id,
          from: todoProvider,
          name: r'todoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product') ? null : _$todoHash,
          dependencies: TodoFamily._dependencies,
          allTransitiveDependencies: TodoFamily._allTransitiveDependencies,
          id: id,
        );

  TodoProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  TodoModel runNotifierBuild(
    covariant Todo notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(Todo Function() create) {
    return ProviderOverride(
      origin: this,
      override: TodoProvider._internal(
        () => create()..id = id,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<Todo, TodoModel> createElement() {
    return _TodoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TodoProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin TodoRef on AutoDisposeNotifierProviderRef<TodoModel> {
  /// The parameter `id` of this provider.
  int get id;
}

class _TodoProviderElement
    extends AutoDisposeNotifierProviderElement<Todo, TodoModel> with TodoRef {
  _TodoProviderElement(super.provider);

  @override
  int get id => (origin as TodoProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
