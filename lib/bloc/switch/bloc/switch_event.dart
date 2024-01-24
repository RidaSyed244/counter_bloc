// ignore_for_file: must_be_immutable

part of 'switch_bloc.dart';

abstract class SwitchEvent extends Equatable {
  const SwitchEvent();

  @override
  List<Object> get props => [];
  //logic of upper line is props means properties and it is used to compare two objects for example:
  // class Person {
  //   final String name;
  //   final int age;
  //   Person(this.name, this.age);
  // }
  // void main() {
  //   final p1 = Person('Bob', 30);
  //   final p2 = Person('Bob', 30);
  //   print(p1 == p2); // false
  // }
  //result is false because p1 and p2 are two different objects and they are not equal
}

class EnableOrDisableNotification extends SwitchEvent {}

class SliderEvents extends SwitchEvent {
  double slider;
  SliderEvents({this.slider = 1.0});

  @override
  List<Object> get props => [slider];
}
