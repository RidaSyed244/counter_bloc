import 'package:equatable/equatable.dart';

class CounterState extends Equatable {
  final int counterValue;

  const CounterState({this.counterValue = 0});
  CounterState copyWith({int? counterValue}) {
    return CounterState(counterValue: counterValue ?? this.counterValue);
  }

  @override
  List<Object> get props => [counterValue];
}
