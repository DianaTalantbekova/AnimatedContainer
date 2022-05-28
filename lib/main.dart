import 'package:animated_container_with_bloc/bloc/randomparameters_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AnimatedContainerWithBloC(),
    );
  }
}

class AnimatedContainerWithBloC extends StatefulWidget {
  const AnimatedContainerWithBloC({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerWithBloC> createState() =>
      AnimatedContainerWithBloCState();
}

class AnimatedContainerWithBloCState extends State<AnimatedContainerWithBloC> {
  RandomparametersBloc _animationBloc = RandomparametersBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _animationBloc.add(
            GetRandomParametersEvent(maxSize: 500, minSize: 10),
          );
        },
        child: Icon(
          Icons.add,
        ),
      ),
      body: Center(
        child: BlocBuilder<RandomparametersBloc, RandomparametersState>(
          bloc: _animationBloc,
          builder: (context, state) {
            if (state is RandomParameterState) {
              return AnimatedContainer(
                width: state.width,
                height: state.height,
                color: state.color,
                duration: Duration(
                  seconds: 2,
                ),
                child: Text(
                  state.text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: state.textColor,
                  ),
                ),
              );
            }
            return SizedBox();
          },
        ),
      ),
    );
  }
}
