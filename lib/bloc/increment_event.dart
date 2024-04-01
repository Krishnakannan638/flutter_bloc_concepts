import 'package:equatable/equatable.dart';

abstract class IncrementEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class AddEvent extends IncrementEvent {
  @override
  List<Object?> get props => [];
}

class Subract extends IncrementEvent {
  @override
  List<Object?> get props => [];
}
