abstract class TodoState {}

class TodoInitial extends TodoState {}

class TodoLoading extends TodoState {}

class TodoLoaded extends TodoState {
  final List<String> todos;
  final String? selectedTodo;
  TodoLoaded(this.todos, this.selectedTodo);
}

class TodoError extends TodoState {
  final String message;
  TodoError(this.message);
}
