import 'package:flutter/material.dart';
import 'package:flutter_preload_videos/service/navigation_service.dart';
import 'package:flutter_preload_videos/injection.dart';

/// Global BuildContext
final BuildContext context =
    getIt<NavigationService>().navigationKey.currentContext!;
