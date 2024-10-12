import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/orientatio_bloc.dart';
import '../../bloc/orientation_state.dart';
import '../mixins/orientation_aware_mixin.dart';
import 'package:flutter/material.dart';

// Orientation-aware StatelessWidget base class
abstract class OrientationAwareStatelessWidget extends StatelessWidget with OrientationAwareMixin {
  const OrientationAwareStatelessWidget({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrientationBloc, OrientationState>(
      builder: (context, state) => buildOrientationAware(context, state),
    );
  }
}



// Orientation-aware StatefulWidget base class
abstract class OrientationAwareStatefulWidget extends StatefulWidget {
  const OrientationAwareStatefulWidget({Key? key}) : super(key: key);
 
  @override
  OrientationAwareState createState();
}
 
abstract class OrientationAwareState<T extends OrientationAwareStatefulWidget>
    extends State<T> with OrientationAwareMixin {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrientationBloc, OrientationState>(
      builder: (context, state) => buildOrientationAware(context, state),
    );
  }
}