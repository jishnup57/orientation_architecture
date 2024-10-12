import '../core/orientation_enum.dart';

abstract class OrientationEvent {}

class UpdateOrientation extends OrientationEvent {
  final AppOrientation orientation;
  UpdateOrientation(this.orientation);
}