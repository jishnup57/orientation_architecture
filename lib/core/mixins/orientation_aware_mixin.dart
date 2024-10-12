import 'package:flutter/widgets.dart';

import '../../bloc/orientation_state.dart';
import '../orientation_enum.dart';

// Base mixin for common orientation functionality
mixin OrientationAwareMixin {
  Widget buildPortrait(BuildContext context);
  Widget buildLandscape(BuildContext context);
 
  Widget buildOrientationAware(BuildContext context, OrientationState state) {
    return state.orientation == AppOrientation.portrait
        ? buildPortrait(context)
        : buildLandscape(context);
  }
}