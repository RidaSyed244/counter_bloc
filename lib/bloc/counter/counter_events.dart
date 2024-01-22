import 'package:equatable/equatable.dart';

abstract class CounterEvent extends Equatable {
//abstract class means  it can't be instantiated directly and needs to be extended by another class for example
//Abstract class act as a base class and define behavior and intterface for its subclasses

  const CounterEvent();
  @override
  List<Object> get props =>
      []; //props means properties and it is used to compare two objects
}

class IncrementCounter extends CounterEvent {}

class DecrementCounter extends CounterEvent {}
