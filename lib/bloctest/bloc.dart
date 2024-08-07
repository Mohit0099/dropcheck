import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web_dashboard_app_tut/bloctest/event.dart';
import 'package:web_dashboard_app_tut/bloctest/state.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc() : super(TodoInitial()) {
    on<FetchTodos>(_onFetchTodos);
    on<SelectTodo>(_onSelectTodo);
  }

  Future<void> _onFetchTodos(FetchTodos event, Emitter<TodoState> emit) async {
    emit(TodoLoading());
    try {
      final response = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        final todos =
            data.map<String>((todo) => todo['title'] as String).toList();
        emit(TodoLoaded(['Clear Selection', ...todos], null));
      } else {
        emit(TodoError('Failed to load todos'));
      }
    } catch (e) {
      emit(TodoError('Failed to load todos: ${e.toString()}'));
    }
  }

  void _onSelectTodo(SelectTodo event, Emitter<TodoState> emit) {
    if (state is TodoLoaded) {
      final currentState = state as TodoLoaded;
      emit(TodoLoaded(currentState.todos,
          event.selectedTodo == 'Clear Selection' ? null : event.selectedTodo));
    }
  }
}
