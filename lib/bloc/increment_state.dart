import 'package:equatable/equatable.dart';

class IncrementState extends Equatable {
  final int counter;
  const IncrementState({this.counter = 0});

  IncrementState copyWith({int? counter}) {
    return IncrementState(counter: counter ?? this.counter);
  }

  @override
  List<Object?> get props => [counter];
}
