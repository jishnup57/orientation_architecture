import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_architecture/bloc/orientation_event.dart';
import 'package:responsive_architecture/bloc/orientation_state.dart';

import '../core/orientation_enum.dart';

class OrientationBloc extends Bloc<OrientationEvent, OrientationState> {
  OrientationBloc() : super(OrientationState(AppOrientation.portrait)) {
    on<UpdateOrientation>((event, emit) {
      emit(OrientationState(event.orientation));
    });
  }
}