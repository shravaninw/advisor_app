import 'package:advisor_app/shared.dart';

import 'app_icons.dart';
import 'app_themes.dart';

// ignore: avoid_classes_with_only_static_members
class _AppAssets extends AppAssets {
  static final _AppAssets instance = _AppAssets();
}

class _AppIcons extends AppIcons {
  static final _AppIcons instance = _AppIcons();
}

// ignore: avoid_classes_with_only_static_members
class _AppRoutes extends AppRoutes {
  static final _AppRoutes instance = _AppRoutes();
}

// ignore: avoid_classes_with_only_static_members
class _AppConstants extends AppConstants {
  static final _AppConstants instance = _AppConstants();
}

// ignore: avoid_classes_with_only_static_members
class _AppColors extends AppColors {
  static final _AppColors instance = _AppColors();
}

class _AppTheme extends AppTheme {
  static final _AppTheme instance = _AppTheme();
}

extension ObjectUtils on Object {
  AppAssets get assets => _AppAssets.instance;

  AppConstants get constants => _AppConstants.instance;

  AppRoutes get routes => _AppRoutes.instance;

  AppColors get colors => _AppColors.instance;
  AppIcons get icons => _AppIcons.instance;

  AppTheme get theme => _AppTheme.instance;
}
