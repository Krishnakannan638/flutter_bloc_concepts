import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_concepts/bloc/increment_event.dart';
import 'package:flutter_bloc_concepts/bloc/increment_state.dart';

class IncrementBloc extends Bloc<IncrementEvent, IncrementState> {
  IncrementBloc() : super(const IncrementState()) {
    on<AddEvent>((event, emit) => _mapAddLogic(event, emit));
    on<Subract>((event, emit) => _mapSubLogic(event, emit));
  }

  void _mapAddLogic(AddEvent event, Emitter<IncrementState> emit) {
    final updateData = state.counter + 1;
    emit(state.copyWith(counter: updateData));
  }

  void _mapSubLogic(Subract event, Emitter<IncrementState> emit) {
    final updateData = state.counter - 1;
    emit(state.copyWith(counter: updateData));
  }
}
