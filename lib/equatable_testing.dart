import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
class EquatableTesting extends StatefulWidget {
  const EquatableTesting({super.key});

  @override
  State<EquatableTesting> createState() => _EquatableTestingState();
}

class _EquatableTestingState extends State<EquatableTesting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Person person=Person(name: 'Haroon', age: 22);
        Person person1=Person(name: 'Haroon', age: 22);
        print(person.hashCode.toString());
        print(person1.hashCode.toString());
        print(person==person1);
       

      }),
    );
  }
}

class Person extends Equatable{
  final String name;
  final int age;
  const Person({required this.name, required this.age});

  @override
  // TODO: implement props
  List<Object?> get props => [name,age];
}
