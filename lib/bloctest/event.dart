abstract class TodoEvent {}

class FetchTodos extends TodoEvent {}

class SelectTodo extends TodoEvent {
  final String? selectedTodo;
  SelectTodo(this.selectedTodo);
}
