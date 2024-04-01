// ignore: implementation_imports
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_concepts/bloc/increment_bloc.dart';
import 'package:flutter_bloc_concepts/main.dart';

// ignore: camel_case_types
class wrapper extends StatefulWidget {
  const wrapper({Key? key}) : super(key: key);

  @override
  State<wrapper> createState() => _wrapperState();
}

// ignore: camel_case_types
class _wrapperState extends State<wrapper> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => IncrementBloc(),
      child: const MyHomePage(title: "Flutter Bloc Demo"),
    );
  }
}
