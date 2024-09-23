import 'package:bloc_flutter/UI/counter_screen.dart';
import 'package:bloc_flutter/UI/switch_example.dart';
import 'package:bloc_flutter/bloc/counter/counter_bloc.dart';
import 'package:bloc_flutter/bloc/switch/switch_bloc.dart';
import 'package:bloc_flutter/equatable_testing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => CounterBloc(),),
        BlocProvider(create: (context) => SwitchBloc(),),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: SwitchExample(),
      ),
    );
  }
}


