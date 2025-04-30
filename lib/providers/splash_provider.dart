import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../view_models/splash_view_model.dart';

final splashViewModelProvider = StateNotifierProvider.family<SplashViewModel, double, BuildContext>(
      (ref, context) => SplashViewModel(context),
);