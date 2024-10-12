// OrientationListener remains the same
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_architecture/bloc/orientatio_bloc.dart';

import '../../bloc/orientation_event.dart';
import '../orientation_enum.dart';

class OrientationListener extends StatelessWidget {
  final Widget child;
 
  const OrientationListener({Key? key, required this.child}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        context.read<OrientationBloc>().add(
              UpdateOrientation(
                orientation == Orientation.portrait
                    ? AppOrientation.portrait
                    : AppOrientation.landscape,
              ),
            );
        return child;
      },
    );
  }
}





