import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../views/counter_view.dart';

class SplashViewModel extends StateNotifier<double> {
  final BuildContext _context;

  SplashViewModel(this._context) : super(0.0) {
    _initialize();
  }

  void _initialize() async {
    await Future.delayed(Duration(milliseconds: 500));
    state = 1.0; // Trigger fade-in animation
    await Future.delayed(Duration(seconds: 3)); // Total splash duration
    _navigateToCounterView();
  }

  void _navigateToCounterView() {
   _context.go('/counter-view');
  }
}