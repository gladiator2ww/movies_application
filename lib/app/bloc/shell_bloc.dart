import 'package:flutter_bloc/flutter_bloc.dart';

class ShellBloc extends Bloc<ShellBlocEvent, ShellBlocState> {
  ShellBloc() : super(ShellBlocEmptyState()) {
    add(SelectPageShellBlocEvent(index: 0));
  }

  @override
  Stream<ShellBlocState> mapEventToState(ShellBlocEvent event) async* {
    if (event is SelectPageShellBlocEvent) {
      yield SelectedPageShellBlocState(index: event.index);
    }
  } 
}

abstract class ShellBlocEvent {}

class SelectPageShellBlocEvent extends ShellBlocEvent {
  final int index;
  SelectPageShellBlocEvent({
    required this.index,
  });
}

abstract class ShellBlocState {}

class SelectedPageShellBlocState extends ShellBlocState {
  final int index;
  SelectedPageShellBlocState({
    required this.index,
  });
}

class ShellBlocEmptyState extends ShellBlocState {}
