import 'package:counter_bloc/bloc/switch/bloc/switch_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:counter_bloc/bloc/switch/bloc/switch_bloc.dart';

class SwitchScreen extends StatefulWidget {
  @override
  State<SwitchScreen> createState() => _SwitchScreenState();
}

class _SwitchScreenState extends State<SwitchScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Switch:'),
                  BlocBuilder<SwitchBloc, SwitchState>(
                    buildWhen: (previous, current) {
                      return previous.isSwitch != current.isSwitch;
                    },
                    builder: (context, state) {
                      print(state.isSwitch);
                      return Switch(
                        value: state.isSwitch,
                        onChanged: (newvalue) {
                          context.read<SwitchBloc>().add(
                                EnableOrDisableNotification(),
                              );
                        },
                      );
                    },
                  ),
                ],
              ),
              BlocBuilder<SwitchBloc, SwitchState>(
                buildWhen: (previous, current) {
                  return previous.slider != current.slider;
                },
                builder: (context, state) {
                  print(state.slider);
                  return Container(
                    width: 200,
                    height: 100,
                    color: Colors.red.withOpacity(state.slider),
                    margin: EdgeInsets.symmetric(vertical: 20),
                  );
                },
              ),
              Slider(
                value: context.watch<SwitchBloc>().state.slider,
                onChanged: (value) {
                  context.read<SwitchBloc>().updateSlider(value);
                },
                min: 0,
                max: 1,
                divisions: 10,
                label: 'Slider',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
